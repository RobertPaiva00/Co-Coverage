/**
* rf_node_oblique_simCamera
*
* This node can be used to perform oblique formations in Stage, with camera constraints as FOV.
* This node applies the algorithm developed by Sérgio Monteiro in his PhD Thesis for oblique shapes.
* The repulsive contributions are computed from LRF measures and the attractive contributions from
* the pose of his leader determined by base_pose_ground_truth topics.
*
*/


#include <iostream>
#include <string>
#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <tf/LinearMath/Matrix3x3.h>
#include <tf/LinearMath/Quaternion.h>
#include <tf/tf.h>
#include <nav_msgs/Odometry.h>
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/PointStamped.h"
#include <cmath>
#include "math_rf.h"
#include "attractoroblique.h"
#include "repulsive.h"
#include "follower.h"

// simulate time
#define TIMES2PREDICT 2

// camera field of view maximum distance
#define CAMERA_MAXDIST 5.0
// field of view maximum angle in radians
#define CAMERA_ANGLEFIELDOFVISION 0.457
// maximum marker relative angle in radians (85 degrees)
#define CMAMERA_RELATIVEANGLE 1.5

// listener for LRF node
tf::TransformListener* listenerscan = NULL;

// topic to publish velocity commands
ros::Publisher follower_cv_pub;

// variable to publish velocity commands values to the follower robot
geometry_msgs::Twist cmd_vel;


// define oblique formation, using the AttractorOblique class
AttractorOblique target;

// define a follower, using the Follower class
Follower follower;

// define strings to save tf topics of leader and follower
using namespace std;
std::string INstampname, INleaderstampname;

// simulate time
int times_predicted = 0;

// variables to simulate camera 
bool leader_odom_arrived = false, follower_odom_arrived = false;
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
void odom_leaderCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
	leader_odom.xPos = msg->pose.pose.position.x;
	leader_odom.yPos = msg->pose.pose.position.y;

	leader_odom.x = msg->pose.pose.orientation.x;
	leader_odom.y = msg->pose.pose.orientation.y;
	leader_odom.z = msg->pose.pose.orientation.z;
	leader_odom.w = msg->pose.pose.orientation.w;

	leader_odom.angle = atan2(2*(leader_odom.y*leader_odom.x+leader_odom.w*leader_odom.z), leader_odom.w*leader_odom.w+leader_odom.x*leader_odom.x-leader_odom.y*leader_odom.y-leader_odom.z*leader_odom.z);

	leader_odom_arrived = true;
}

// save follower base_pose_ground_truth information
void odom_followerCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
	follower_odom.xPos = msg->pose.pose.position.x;
	follower_odom.yPos = msg->pose.pose.position.y;

	follower_odom.x = msg->pose.pose.orientation.x;
	follower_odom.y = msg->pose.pose.orientation.y;
	follower_odom.z = msg->pose.pose.orientation.z;
	follower_odom.w = msg->pose.pose.orientation.w;

	follower_odom.angle = atan2(2*(follower_odom.y*follower_odom.x+follower_odom.w*follower_odom.z), follower_odom.w*follower_odom.w+follower_odom.x*follower_odom.x-follower_odom.y*follower_odom.y-follower_odom.z*follower_odom.z);
	
	follower_odom_arrived = true;
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

// function to receive LRF messages and update target information
void scanReceived(const sensor_msgs::LaserScan::ConstPtr& pt)
{
	time_t seconds_past_epoch = time(0);

	bool tf_arrived = false;
	double target_inli, target_inthetai, target_inthetaj, target_invj;

	// when leader_odom_arrived and follower_odom_arrived are available
	if(leader_odom_arrived && follower_odom_arrived){
		// --> 1st estimate marker/leader pose and velocities (camera simulation with field of vision)
		target_inli = dist_Euclidian2(leader_odom.xPos, leader_odom.yPos, follower_odom.xPos, follower_odom.yPos);
		target_inthetai = -wraptoPI((follower_odom.angle - atan2((leader_odom.yPos - follower_odom.yPos), (leader_odom.xPos - follower_odom.xPos))));
		target_inthetaj = wraptoPI(leader_odom.angle - follower_odom.angle);
		target_invj = leader_odom.vlinear;

		if(target_inli < CAMERA_MAXDIST && target_inthetai < CAMERA_ANGLEFIELDOFVISION && target_inthetai > -CAMERA_ANGLEFIELDOFVISION && target_inthetaj < CMAMERA_RELATIVEANGLE && target_inthetaj > -CMAMERA_RELATIVEANGLE){
			target.update(target_inli, target_inthetai, target_invj);
			target.upforces();
			tf_arrived = true;
		}
		else
			tf_arrived = false;
		

		if(tf_arrived){
			times_predicted = 0;

			// --> 2nd compute repulsive force, only if exists marker in the field of view
			Repulsive repulsive(pt->angle_increment, pt->ranges.size());

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

			// update repulsive forces
			repulsive.upforces(target.li, target.thetai);

			// update follower command values
			follower.updatecmd(target.vid, target.fangular, repulsive.vid, repulsive.fangular, repulsive.U_positive);

			// apply robot command values
			publishVelocity(follower.cmd_linear, follower.cmd_angular);

			// delete all information about LRF measures
			repulsive.clear();
		}
		else{
			times_predicted++;
			// when time_tf_elapsed is smaller than TIMES2PREDICT, follower know where is marker
			if(times_predicted < TIMES2PREDICT){
				// apply robot command values
				publishVelocity(follower.cmd_linear, follower.cmd_angular);
			}
			else{
				// when time_tf_elapsed is bigger than TIMES2PREDICT, follower don't know where is marker and stop
				publishVelocity(0,0);
			}
		}
	}
}

int main(int argc, char** argv){
	double INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired, INcvrep, INcvatt;

	ros::init(argc, argv, "rf");

	// listener
	listenerscan = new tf::TransformListener(ros::Duration(1.0), true);

	ros::NodeHandle node;
	ros::NodeHandle pn("~");

	// read parameters
	pn.getParam("instampname", INstampname);
	pn.getParam("inleaderstampname", INleaderstampname);
	pn.getParam("inlid", INlid);
	pn.getParam("inlambda", INlambda);
	pn.getParam("intau_delta", INtau_delta);
	pn.getParam("inmu", INmu);
	pn.getParam("ingamma", INgamma);
	pn.getParam("inangle_desired", INangle_desired);
	pn.getParam("incvrep", INcvrep);
	pn.getParam("incvatt", INcvatt);
	
	// set up target and follower class
	target.setup(INlid, INlambda, INtau_delta, INmu, INgamma, INangle_desired);
	follower.setup(INcvrep, INcvatt);

	// subscribe to LRF, follower current command values, follower base_pose_ground_truth, leader base_pose_ground_truth and leader command values, 
	ros::Subscriber follower_lrf_sub, follower_cv_sub, follower_bpgt_sub, leader_bpgt_sub, leader_cv_sub;

	follower_lrf_sub  = node.subscribe(INstampname + "/base_scan", 1, scanReceived);
	follower_cv_sub = node.subscribe(INstampname + "/cmd_vel", 1, velReceive);
	follower_bpgt_sub = node.subscribe<nav_msgs::Odometry>(INstampname + "/base_pose_ground_truth", 1, &odom_followerCallback);

	leader_bpgt_sub = node.subscribe<nav_msgs::Odometry>(INleaderstampname + "/base_pose_ground_truth", 1, &odom_leaderCallback);
	leader_cv_sub = node.subscribe(INleaderstampname + "/cmd_vel", 1, vel_leaderCallback);

	// publish velocity command values
	follower_cv_pub = node.advertise<geometry_msgs::Twist>(INstampname + "/cmd_vel", 1);

	// Start with null velocity
	publishVelocity(0, 0);
	
	ros::spin();

	return 0;
};
