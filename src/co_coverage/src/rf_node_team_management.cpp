/**
* rf_node_co_coverage_teams_test
*
* This node can be used to perform tests on the team saving status in Stage for the co-coverage functions.
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
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include <cmath>
#include "math_rf.h"
#include "follower.h"
#include <string.h>
#include "co_coverage/Team.h"

co_coverage::Team teams;

// listener for LRF node
tf::TransformListener* listenerscan = NULL;

// define a follower, using the Follower class
Follower follower;

// define strings to save tf topics of follower and leader
using namespace std;
std::string INstampname, INleaderstampname;

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


double getAngle(double x, double y, double z, double w){
	tf2::Quaternion quat(x, y, z, w);
    tf2::Matrix3x3 mat(quat);

	double roll, pitch, yaw;
	mat.getRPY(roll, pitch, yaw);

	return yaw;
}

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

	if (follower_odom.yPos > 7 && strcmp(INstampname.c_str(), INleaderstampname.c_str()) != 0 && !newCell){
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
	if (strcmp(INleaderstampname.c_str(), INstampname.c_str()) == 0){
		if (msg->team_id[IDstamp] == teams.team_id[IDstamp]){
			teams.team_id = msg->team_id;
			teams.team_num = msg->team_num;
		} else {
			return;
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

	// subscribe to LRF, follower current command values, follower base_pose_ground_truth, leader base_pose_ground_truth and leader command values, 
	ros::Subscriber follower_bpgt_sub, leader_bpgt_sub, team_sub;

	// publish team management values
	ros::Publisher teams_pub = node.advertise<co_coverage::Team>("/team", 1);

	if(strcmp(INstampname.c_str(), INleaderstampname.c_str()) == 0){
		teams.team_id[IDstamp] += 1;
		teams.team_num += 1;
		teams_pub.publish(teams);
	}

	while(ros::ok()){
		team_sub = node.subscribe("/team", 1, teamStatusCallback);
		teams.header.stamp = ros::Time::now();
		teams_pub.publish(teams);

		follower_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INstampname + "/amcl_pose", 10, &odom_followerCallback);


		leader_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INleaderstampname + "/amcl_pose", 1, &odom_leaderCallback);

		ros::spinOnce();
	}

	return 0;
};
