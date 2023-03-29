/**
* rf_node_co_coverage_teams_test
*
* This node can be used to perform tests on the subteam descriptor in Stage for the co-coverage functions.
*
*/

#include <iostream>
#include <string>
#include <ros/ros.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Matrix3x3.h>
#include <tf/transform_listener.h>
#include <tf/LinearMath/Matrix3x3.h>
#include <tf/LinearMath/Quaternion.h>
#include <tf/tf.h>
#include <vector>
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include "math_rf.h"
#include "follower.h"
#include "co_coverage/Team.h"
#include "co_coverage/Subteam.h"

co_coverage::Team teams;
co_coverage::Subteam subteam_info;

// listener for LRF node
tf::TransformListener* listenerscan = NULL;

// define a follower, using the Follower class
Follower follower;

// define strings to save tf topics of follower and leader
using namespace std;
std::string INstampname, INleaderstampname, curr_subteam;

// define int to save the ID from of follower and leader 
int IDstamp, IDleaderstamp;

// variables to simulate camera 
bool leader_odom_arrived = false, follower_odom_arrived = false, newCell = false;

struct leader_robot
{
	double xPos;
	double yPos;

	// get Quartenion angular information
	double x;
	double y;
	double z;
	double w;
	// convert to pitch
	double angle;

	double vlinear;
	double vangular;

} leader_odom, follower_odom; // struct for leader and follower variables

// save leader base_pose_ground_truth information
void odom_leaderCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg)
{
	leader_odom.xPos = msg->pose.pose.position.x;
	leader_odom.yPos = msg->pose.pose.position.y;

	leader_odom.x = msg->pose.pose.orientation.x;
	leader_odom.y = msg->pose.pose.orientation.y;
	leader_odom.z = msg->pose.pose.orientation.z;
	leader_odom.w = msg->pose.pose.orientation.w;

	leader_odom.angle = getAngle(leader_odom.x, leader_odom.y, leader_odom.z, leader_odom.w);
	
	leader_odom_arrived = true;
}

// save follower base_pose_ground_truth information
void odom_followerCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg)
{
	follower_odom.xPos = msg->pose.pose.position.x;
	follower_odom.yPos = msg->pose.pose.position.y;

	if (follower_odom.yPos > 7 && IDstamp != IDleaderstamp && !newCell){
		newCell = true;
	}

	follower_odom.x = msg->pose.pose.orientation.x;
	follower_odom.y = msg->pose.pose.orientation.y;
	follower_odom.z = msg->pose.pose.orientation.z;
	follower_odom.w = msg->pose.pose.orientation.w;

	follower_odom.angle = getAngle(follower_odom.x, follower_odom.y, follower_odom.z, follower_odom.w);
	
	follower_odom_arrived = true;
}

void teamStatusCallback(const co_coverage::Team::ConstPtr& msg)
{
	if (IDstamp == IDleaderstamp){
		if (msg->team_id[IDstamp] == teams.team_id[IDstamp]){
			teams.team_id = msg->team_id;
			teams.team_num = msg->team_num;
		}

	} else {
		if (newCell){
			teams.team_id = msg->team_id;
			teams.team_num = msg->team_num;
			teams.team_num += 1;
			teams.team_id[IDstamp] = teams.team_num;
			INleaderstampname = INstampname;
			IDleaderstamp = IDstamp;
			newCell = false;

		} else if (msg->team_id[IDleaderstamp] != teams.team_id[IDstamp]){
			teams.team_id = msg->team_id;
			teams.team_id[IDstamp] = msg->team_id[IDleaderstamp];
			teams.team_num = msg->team_num;

		}else {
			teams.team_id = msg->team_id;
			teams.team_num = msg->team_num;
		}
	}
}

void subteam_leader_num_robots()
{
	int count = 0;

	for(int i = 0; i < 100; i++){
		if (teams.team_id[i] == teams.team_id[IDstamp]){
			count++;
		} else if (teams.team_id[i] == 0){
			break;
		}
	}

	subteam_info.num_robots = count;

	if (subteam_info.num_robots != subteam_info.order.size()){
		subteam_info.order.resize(count, -1);
		subteam_info.order[0] = IDstamp;
	}
}

void subteam_infoCallback(const co_coverage::Subteam::ConstPtr& msg)
{
	subteam_info.order = msg->order;
	subteam_info.num_robots = msg->num_robots;

	if(IDstamp == IDleaderstamp){
		subteam_leader_num_robots();

	} else {
		for(int i = 0; i < (msg->num_robots - 1); i++){
			if (msg->order[i] == IDleaderstamp){
				if (msg->order[i+1] != IDstamp){
					subteam_info.order[i+1] = IDstamp;
					return;
				} else {
					return;
				}
				
			} else if (msg->order[i] == -1){
				return;
			}
		}
	}
}

int main(int argc, char** argv){
	ros::init(argc, argv, "rf");

	// listener
	listenerscan = new tf::TransformListener(ros::Duration(1.0), true);

	ros::NodeHandle pn("~");
	ros::NodeHandle node;

	// read parameters
	pn.getParam("instampname", INstampname);
	pn.getParam("idstamp", IDstamp);
	pn.getParam("inleaderstampname", INleaderstampname);
	pn.getParam("idleaderstamp", IDleaderstamp);

	// descriptor for which robot is sending to /team
	teams.header.frame_id = INstampname;
	subteam_info.header.frame_id = INstampname;
	subteam_info.num_robots = 0; 
	curr_subteam = "unnamed";

	// subscribe to LRF, follower current command values, follower base_pose_ground_truth, leader base_pose_ground_truth and leader command values, 
	ros::Subscriber follower_bpgt_sub, leader_bpgt_sub, team_sub, subteam_info_sub;

	// publish team management values
	ros::Publisher teams_pub = node.advertise<co_coverage::Team>("/team", 1);
	ros::Publisher subteam_info_pub = node.advertise<co_coverage::Subteam>(curr_subteam, 1);

	if(IDstamp == IDleaderstamp){
		teams.team_id[IDstamp] += 1;
		teams.team_num += 1;
		teams_pub.publish(teams);
	}

	while(ros::ok()){
		team_sub = node.subscribe("/team", 1, teamStatusCallback);
		teams.header.stamp = ros::Time::now();
		teams_pub.publish(teams);

		subteam_info_sub = node.subscribe(curr_subteam, 1, subteam_infoCallback);
		subteam_info.header.stamp = ros::Time::now();
		subteam_info_pub.publish(subteam_info);

		follower_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INstampname + "/amcl_pose", 10, &odom_followerCallback);
		leader_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INleaderstampname + "/amcl_pose", 1, &odom_leaderCallback);
		
		if(strcmp(curr_subteam.c_str(), ("/subteam_" + to_string(teams.team_id[IDstamp])).c_str()) != 0){
			curr_subteam = "/subteam_" + to_string(teams.team_id[IDstamp]);
			subteam_info_sub.shutdown();
			subteam_info_pub.shutdown();
			subteam_info_pub = node.advertise<co_coverage::Subteam>(curr_subteam, 1);
		}

		// if(IDstamp == IDleaderstamp){
		// 	subteam_leader_num_robots();
		// 	subteam_info.header.stamp = ros::Time::now();
		// 	subteam_info_pub.publish(subteam_info);
		// } 

		// subteam_info_sub = node.subscribe("/subteam_1", 1, subteam_infoCallback);
		// if (subteam_info_arrived){
		// 	subteam_info.header.stamp = ros::Time::now();
		// 	subteam_info_pub.publish(subteam_info);
		// }	

		ros::spinOnce();
	}

	return 0;
};
