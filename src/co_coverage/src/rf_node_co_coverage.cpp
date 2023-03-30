/**
* rf_node_co_coverage
*
* This node can be used to perform the formations in Stage for the co-coverage functions, without camera constraints as FOV.
* This node applies the algorithm developed by Sérgio Monteiro in his PhD Thesis for oblique shapes.
* The repulsive contributions are computed from LRF measures and the attractive contributions from
* the pose of his leader determined by base_pose_ground_truth topics.
* Also applies the algorithm developed by Roberto Paiva for changing formation leaders.
*
*/

#include <iostream>
#include <string>
#include <ros/ros.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Matrix3x3.h>
#include <tf/transform_listener.h>
#include <tf/tf.h>
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include "math_rf.h"
#include "attractoroblique.h"
#include "attractorcolumn.h"
#include "repulsive.h"
#include "follower.h"
#include "co_coverage/Team.h"
#include "co_coverage/Status.h"

co_coverage::Team teams;
co_coverage::Status status;

// listener for LRF node
tf::TransformListener* listenerscan = NULL;

// topic to publish velocity commands
ros::Publisher follower_cv_pub;

// variable to publish velocity commands values to the follower robot
geometry_msgs::Twist cmd_vel;

// define oblique formation, using the AttractorOblique class
AttractorOblique targetOblique;
AttractorColumn targetColumn;

// define a follower, using the Follower class
Follower follower;

// define strings to save tf topics of leader and follower
using namespace std;
std::string INstampname, INleaderstampname;

// define doubles to save the formation parameters
double INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired, INcvrep, INcvatt;
int IDstamp, IDleaderstamp;

double dist_threshold = 0.05, vel_points = 0.2;

// define points to go
double x_goal, y_goal;

// variables to simulate camera 
bool leader_odom_arrived = false, follower_odom_arrived = false, role_changed = false, parameters_changed = false, parameters_test = false, goToPoint = false, newCell = false;
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


// Promotes the robot from follower to leader
void promotion()
{
	INleaderstampname = string("/robot_3");
	role_changed = true;
	
}

// save follower base_pose_ground_truth information
void odom_followerCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg)
{
	follower_odom.xPos = msg->pose.pose.position.x;
	follower_odom.yPos = msg->pose.pose.position.y;

	if (follower_odom.yPos > 7 && IDstamp == IDleaderstamp){
		parameters_changed = true;
	}

	// if (follower_odom.yPos > 7 && IDstamp != IDleaderstamp && !newCell){
	// 	newCell = true;
	// }

	follower_odom.x = msg->pose.pose.orientation.x;
	follower_odom.y = msg->pose.pose.orientation.y;
	follower_odom.z = msg->pose.pose.orientation.z;
	follower_odom.w = msg->pose.pose.orientation.w;

	follower_odom.angle = getAngle(follower_odom.x, follower_odom.y, follower_odom.z, follower_odom.w);
	
	follower_odom_arrived = true;
}

// callback function for team management
void teamStatusCallback(const co_coverage::Team::ConstPtr& msg)
{
	if (IDstamp == IDleaderstamp){
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
			status.following = IDleaderstamp;
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

// function to publish velocity command values
void publishVelocity(double vlinear, double vangular)
{
	// to prevent wrong marker
	if(vlinear > 2){
		cmd_vel.linear.x = 0;
		cmd_vel.angular.z = 0;
	}
	// to prevent wrong marker
	else if(vlinear < -1){
		cmd_vel.linear.x = 0;
		cmd_vel.angular.z = 0;
	}
	// limit for minimum velocity
	else if(vlinear < -0.5){
		cmd_vel.linear.x = -0.5;
		cmd_vel.angular.z = vangular;
	}
	// limit for maximum velocity
	else if(vlinear > 0.5){
		cmd_vel.linear.x = 0.5;
		cmd_vel.angular.z = vangular;
	}
	// zero values are difficult obtain
	else if(vlinear >= -0.1 && vlinear <= 0.1){
		cmd_vel.linear.x = 0;
		cmd_vel.angular.z = vangular;
	}
	// everything is fine
	else{
		cmd_vel.linear.x = vlinear;
		cmd_vel.angular.z = vangular;
	}
	
	// publish velocity into the topic /cmd_vel
	follower_cv_pub.publish(cmd_vel);
}

// function to receive and update follower velocities from odometry messages
void velReceive(const geometry_msgs::Twist::ConstPtr& vel_msg)
{
	follower_odom.vlinear = vel_msg->linear.x;
	follower_odom.vangular = vel_msg->angular.z;

	follower.update(follower_odom.vlinear, follower_odom.vangular);
}

// function to receive and update leader velocities from odometry messages
void vel_leaderCallback(const geometry_msgs::Twist::ConstPtr& vel_msg)
{
	leader_odom.vlinear = vel_msg->linear.x;
	leader_odom.vangular = vel_msg->angular.z;
}

void robotMovement(const sensor_msgs::LaserScan::ConstPtr& pt){
	time_t seconds_past_epoch = time(0);

	double target_inli, target_inthetai, target_invj;

	Repulsive repulsive(pt->angle_increment, pt->ranges.size());

	if (!goToPoint){
		// --> 1st estimate marker/leader pose and velocities (camera simulation without field of vision)
		target_inli = dist_Euclidian2(leader_odom.xPos, leader_odom.yPos, follower_odom.xPos, follower_odom.yPos);
		target_inthetai = -wraptoPI((follower_odom.angle - atan2((leader_odom.yPos - follower_odom.yPos), (leader_odom.xPos - follower_odom.xPos))));
		target_invj = leader_odom.vlinear;

		targetOblique.update(target_inli, target_inthetai, target_invj);
		targetOblique.upforces();

	} else {
		// --> 1st estimate marker/leader pose and velocities (camera simulation without field of vision)
		target_inli = dist_Euclidian2((x_goal + IDstamp), y_goal, follower_odom.xPos, follower_odom.yPos);
		target_inthetai = -wraptoPI((follower_odom.angle - atan2((y_goal - follower_odom.yPos), ((x_goal + IDstamp) - follower_odom.xPos))));
		target_invj = vel_points;
		
		targetColumn.update(target_inli, target_inthetai, target_invj);
		targetColumn.upforces();
	}

	geometry_msgs::PointStamped laser_point;
	laser_point.header.frame_id = INstampname + "/base_laser_link";
	laser_point.header.stamp = ros::Time();

	// remove saturated readings and delete nan readings
	for(int i = 0; i < pt->ranges.size(); i++){
		if(isnan(pt->ranges[i]) && i==0){
			for (int j = i; j < pt->ranges.size(); j++){
				if(isnan(pt->ranges[j]))
					continue;
				else if (pt->ranges[j] < pt->range_min)
					repulsive.d[i] = pt->range_min;
				else if(pt->ranges[j] > pt->range_max)
					repulsive.d[i] = pt->range_max;
				else
					repulsive.d[i] = pt->ranges[j];
			}
		}
		else if(isnan(pt->ranges[i]) && i!=0)
			repulsive.d[i] = repulsive.d[i-1];

		else if (pt->ranges[i] < pt->range_min)
			repulsive.d[i] = pt->range_min;
		else if(pt->ranges[i] > pt->range_max)
			repulsive.d[i] = pt->range_max;
		else
			repulsive.d[i] = pt->ranges[i];

		repulsive.angle[i] = pt->angle_min + pt->angle_increment*i;

		// transform LRF readings to the robot coordinate frame
		laser_point.point.x = repulsive.d[i]*cos(repulsive.angle[i]);
		laser_point.point.y = repulsive.d[i]*sin(repulsive.angle[i]);
		laser_point.point.z = 0.0;

		try{
			geometry_msgs::PointStamped base_point;
			listenerscan->waitForTransform(INstampname + "/base_link", INstampname + "/base_laser_link", ros::Time(0), ros::Duration(0.01));
			listenerscan->transformPoint(INstampname + "/base_link", laser_point, base_point);
			repulsive.d[i] = sqrt(base_point.point.x*base_point.point.x + base_point.point.y*base_point.point.y);
			repulsive.angle[i] = atan2(base_point.point.y, base_point.point.x);
		}
		catch(tf::TransformException& ex){
		ROS_ERROR("Received an exception trying to transform a point from base_laser_link to base_link: %s",ex.what());
		}
	}

	if(!goToPoint){
		// update repulsive forces
		repulsive.upforces(targetOblique.li, targetOblique.thetai);

		// update follower command values
		follower.updatecmd(targetOblique.vid, targetOblique.fangular, repulsive.vid, repulsive.fangular, repulsive.U_positive);

	} else {
		// update repulsive forces
		repulsive.upforces(targetColumn.li, targetColumn.thetai);

		// update follower command values
		follower.updatecmd(targetColumn.vid, targetColumn.fangular, repulsive.vid, repulsive.fangular, repulsive.U_positive);
	}

	// apply robot command values
	publishVelocity(follower.cmd_linear, follower.cmd_angular);

	// delete all information about LRF measures
	repulsive.clear();

}

// function to receive LRF messages and update target information
void scanReceived(const sensor_msgs::LaserScan::ConstPtr& pt)
{
	if (IDstamp != IDleaderstamp){
		robotMovement(pt);
	}
}

bool initCoverage(){
	if (follower_odom_arrived){
		if (follower_odom.xPos < (x_goal + IDstamp + dist_threshold) && follower_odom.xPos > (x_goal + IDstamp - dist_threshold) && follower_odom.yPos < (y_goal + dist_threshold) && follower_odom.yPos > (y_goal - dist_threshold)){
			publishVelocity(0, 0);
			return true;
		}
	}

	return false;
}

bool standTurn(double angle){
	publishVelocity(0, 0);

	if (abs(angle - follower_odom.angle) < M_PI/360){
		return true;
	}

	publishVelocity(0, 1.0 * (angle - follower_odom.angle) / (M_PI/2));

	return false;

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

	// descriptor for which robot is sending to /status and /team 
	status.header.frame_id = INstampname;
	teams.header.frame_id = INstampname;

	// subscribe to LRF, follower current command values, follower base_pose_ground_truth, leader base_pose_ground_truth and leader command values, 
	ros::Subscriber follower_lrf_sub, follower_cv_sub, follower_bpgt_sub, leader_bpgt_sub, leader_cv_sub, team_sub;

	double angle;
	x_goal = 1.0;
	y_goal = 1.0;
	// goToPoint = true;
	bool alreadyChanged = false;
	status.status = 2; // Always start as not ready
	status.following = IDleaderstamp; // Always start as not leader

	// publish velocity command values
	follower_cv_pub = node.advertise<geometry_msgs::Twist>(INstampname + "/cmd_vel", 1);

	// publish robot status
	ros::Publisher status_pub = node.advertise<co_coverage::Status>(INstampname + "/status", 1);

	// publish team status
	ros::Publisher teams_pub = node.advertise<co_coverage::Team>("/team", 1);

	// Start with null velocity
	publishVelocity(0, 0);

	if(IDstamp == IDleaderstamp){
		teams.team_id[IDstamp] += 1;
		teams.team_num += 1;
		teams_pub.publish(teams);
	}

	while(ros::ok()){
		team_sub = node.subscribe("/team", 1, teamStatusCallback);
		teams.header.stamp = ros::Time::now();
		teams_pub.publish(teams);

		status.header.stamp = ros::Time::now();
		status_pub.publish(status);

		angle = M_PI/2; //getBestCoverageAngle(); // TO DO

		if (goToPoint){
			status.status = 2;
			if (initCoverage()){
				if (standTurn(angle)){
					goToPoint = false;
					publishVelocity(0, 0);
				} 
			}
		} else {
			status.status = 1;
		}

		follower_lrf_sub  = node.subscribe(INstampname + "/base_scan", 1, scanReceived);
		follower_cv_sub = node.subscribe(INstampname + "/cmd_vel", 1, velReceive);
		follower_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INstampname + "/amcl_pose", 10, &odom_followerCallback);

		if (IDstamp != IDleaderstamp){
			if (role_changed && !alreadyChanged){
				leader_bpgt_sub.shutdown();
				leader_cv_sub.shutdown();

				role_changed = false;
				alreadyChanged = true;
			}

			// if (parameters_changed){
			// 	targetOblique.setup(INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired);
			// 	parameters_changed = false;
			// }
			
			leader_bpgt_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(INleaderstampname + "/amcl_pose", 1, &odom_leaderCallback);
			leader_cv_sub = node.subscribe(INleaderstampname + "/cmd_vel", 1, vel_leaderCallback);

		}

		ros::spinOnce();
	}

	return 0;
};
