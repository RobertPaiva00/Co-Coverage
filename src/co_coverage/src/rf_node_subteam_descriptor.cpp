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
#include "attractoroblique.h"
#include "attractorcolumn.h"
#include "follower.h"
#include "co_coverage/Team.h"
#include "co_coverage/SubteamOrder.h"
#include "co_coverage/SubteamParameters.h"

co_coverage::Team teams;
co_coverage::SubteamOrder subteam_order;
co_coverage::SubteamParameters subteam_parameters;

// listener for LRF node
tf::TransformListener* listenerscan = NULL;

// define a follower, using the Follower class
Follower follower;

// define oblique formation, using the AttractorOblique class
AttractorOblique targetOblique;
AttractorColumn targetColumn;

// define strings to save tf topics of follower and leader
using namespace std;
std::string INstampname, INleaderstampname, curr_subteam;

// define int to save the ID from of follower and leader 
int IDstamp, IDleaderstamp;

double INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired, INcvrep, INcvatt;

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
		INangle_desired = 0.4;
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

	subteam_order.num_robots = count;

	if (subteam_order.num_robots != subteam_order.order.size()){
		subteam_order.order.resize(count, -1);
		subteam_order.order[0] = IDstamp;
	}
}

void subteam_orderCallback(const co_coverage::SubteamOrder::ConstPtr& msg)
{
	subteam_order.order = msg->order;
	subteam_order.num_robots = msg->num_robots;

	if(IDstamp == IDleaderstamp){		
		subteam_leader_num_robots();

		subteam_parameters.inlid = INlid;
		subteam_parameters.inlambda = INlambda;
		subteam_parameters.intau_delta = INtau_delta;
		subteam_parameters.inmu = INmu;
		subteam_parameters.ingamma = INgamma; 
		subteam_parameters.inangle_desired = INangle_desired;
		
	} else {
		for(int i = 0; i < (msg->num_robots - 1); i++){
			if (msg->order[i] == IDleaderstamp){
				if (msg->order[i+1] != IDstamp){
					subteam_order.order[i+1] = IDstamp;
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

void subteam_parametersCallback(co_coverage::SubteamParameters::ConstPtr& msg)
{
	if (IDstamp != IDleaderstamp) {
		INlid = msg->inlid;
		INlambda = msg->inlambda;
		INtau_delta = msg->intau_delta;
		INmu = msg->inmu;
		INgamma = msg->ingamma; 
		INangle_desired = msg->inangle_desired;

		targetOblique.setup(INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired);
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
	pn.getParam("inlid", INlid);
	pn.getParam("inlambda", INlambda);
	pn.getParam("intau_delta", INtau_delta);
	pn.getParam("inmu", INmu);
	pn.getParam("ingamma", INgamma);
	pn.getParam("inangle_desired", INangle_desired);
	pn.getParam("incvrep", INcvrep);
	pn.getParam("incvatt", INcvatt);
	

	// set up target and follower class
	targetOblique.setup(INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired);
	follower.setup(INcvrep, INcvatt);
	targetColumn.setup(0, INlambda, INtau_delta);

	// descriptor for which robot is sending to /team
	teams.header.frame_id = INstampname;
	subteam_order.header.frame_id = INstampname;
	subteam_parameters.header.frame_id = INstampname;
	subteam_order.num_robots = 0; 
	curr_subteam = "unnamed";

	// subscribe to LRF, follower current command values, follower base_pose_ground_truth, leader base_pose_ground_truth and leader command values, 
	ros::Subscriber follower_bpgt_sub, leader_bpgt_sub, team_sub, subteam_order_sub, subteam_parameters_sub;

	// publish team management values
	ros::Publisher teams_pub = node.advertise<co_coverage::Team>("/team", 1);
	ros::Publisher subteam_order_pub = node.advertise<co_coverage::SubteamOrder>(curr_subteam + "/order", 1);
	ros::Publisher subteam_parameters_pub = node.advertise<co_coverage::SubteamParameters>(curr_subteam + "/parameters", 1);

	if(IDstamp == IDleaderstamp){
		teams.team_id[IDstamp] += 1;
		teams.team_num += 1;
		teams_pub.publish(teams);
	}

	while(ros::ok()){
		team_sub = node.subscribe("/team", 1, teamStatusCallback);
		teams.header.stamp = ros::Time::now();
		teams_pub.publish(teams);

		subteam_order_sub = node.subscribe(curr_subteam + "/order", 1, subteam_orderCallback);
		subteam_order.header.stamp = ros::Time::now();
		subteam_order_pub.publish(subteam_order);

		subteam_order_sub = node.subscribe(curr_subteam + "/parameters", 1, subteam_parametersCallback);

		follower_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INstampname + "/amcl_pose", 10, &odom_followerCallback);
		leader_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INleaderstampname + "/amcl_pose", 1, &odom_leaderCallback);
		
		if(strcmp(curr_subteam.c_str(), ("/subteam_" + to_string(teams.team_id[IDstamp])).c_str()) != 0){
			curr_subteam = "/subteam_" + to_string(teams.team_id[IDstamp]);
			subteam_order_sub.shutdown();
			subteam_order_pub.shutdown();
			subteam_parameters_sub.shutdown();
			subteam_parameters_pub.shutdown();
			subteam_order_pub = node.advertise<co_coverage::SubteamOrder>(curr_subteam + "/order", 1);
			subteam_parameters_pub = node.advertise<co_coverage::SubteamParameters>(curr_subteam + "/parameters", 1);
		}

		ros::spinOnce();
	}

	return 0;
};
