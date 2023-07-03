
/*
* rf_node_co_coverage
*
* This node can be used to perform the formations in Stage for the co-coverage functions, without camera constraints as FOV.
* This node applies the algorithm developed by Sérgio Monteiro in his PhD Thesis for oblique shapes.
* The repulsive contributions are computed from LRF measures and the attractive contributions from
* the pose of his leader determined by amcl_pose topics.
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
#include <vector>
#include <algorithm>
#include <cmath>
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
#include "co_coverage/SubteamOrder.h"
#include "co_coverage/SubteamParameters.h"

// ======================================================================================== DEFINES =======================================================================================

// Initialization of the custom msgs created for this task
co_coverage::Team teams;
co_coverage::Status status;
co_coverage::SubteamOrder subteam_order;
co_coverage::SubteamParameters subteam_parameters;

// listener for LRF node
tf::TransformListener* listenerscan = NULL;

// topic to publish velocity commands
ros::Publisher follower_cv_pub;

// variable to publish velocity commands values to the follower robot
geometry_msgs::Twist cmd_vel;

// define oblique and column formation, using the AttractorOblique and AttractorColumn class
AttractorColumn targetColumnFollow;
AttractorColumn targetColumn;

// define a follower, using the Follower class
Follower follower;

// define strings to save tf topics of leader, follower, current subteam and from the robot it is leading
using namespace std;
std::string stampname, leaderstampname, curr_subteam, leadingstampname;

// define vectors used for the invert the order of the subteam
std::vector<int> subteam_order_aux, order_inv;

// define the formation parameters
double lid, lambda, tau_delta, mu, ingamma, angle_desired, cvrep, cvatt, coverage_angle;
int IDstamp, IDleaderstamp, curve;

// define some movement parameters
double dist_threshold = 0.05, vel_points = 0.2, midpoint = 0.5, vel_coverage = 0.2;

// define points to go
double x_ini, y_ini;

// boolean variables used along the code
bool leader_odom_arrived = false, follower_odom_arrived = false, leader_changed = false, parameters_changed = false, parameters_test = false, goToPoint = false, newCell = false;
bool invert_possible = true; 

// define the leader_robot structure
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

// define a point in type (x,y)
struct line
{
	double x;
	double y;
	double theta;
} line_followPoint; // struct to save the point to follow

// ======================================================================================= FUNCTIONS ======================================================================================


// save leader pose_amcl information
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

// ========================================================================================================================================================================================


// Promotes the robot from follower to leader
void promotion()
{
	leader_changed = true;
}

// ========================================================================================================================================================================================


// save follower pose_amcl information
void odom_followerCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg)
{
	follower_odom.xPos = msg->pose.pose.position.x;
	follower_odom.yPos = msg->pose.pose.position.y;

	if (follower_odom.yPos > 7 && IDstamp != IDleaderstamp && !newCell){
		// newCell = true;
		// curve = 1;
	}

	follower_odom.x = msg->pose.pose.orientation.x;
	follower_odom.y = msg->pose.pose.orientation.y;
	follower_odom.z = msg->pose.pose.orientation.z;
	follower_odom.w = msg->pose.pose.orientation.w;

	follower_odom.angle = getAngle(follower_odom.x, follower_odom.y, follower_odom.z, follower_odom.w);
	
	follower_odom_arrived = true;
}

// ========================================================================================================================================================================================


// callback function for team management
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
			leaderstampname = stampname;
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

	if(teams.team_id.size() < (IDstamp + 1)){
		teams.team_id.resize((IDstamp + 1));
	}
}

// ========================================================================================================================================================================================


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

// ========================================================================================================================================================================================


// function to receive and update follower velocities from odometry messages
void velReceive(const geometry_msgs::Twist::ConstPtr& vel_msg)
{
	follower_odom.vlinear = vel_msg->linear.x;
	follower_odom.vangular = vel_msg->angular.z;

	follower.update(follower_odom.vlinear, follower_odom.vangular);
}

// ========================================================================================================================================================================================


// function to receive and update leader velocities from odometry messages
void vel_leaderCallback(const geometry_msgs::Twist::ConstPtr& vel_msg)
{
	leader_odom.vlinear = vel_msg->linear.x;
	leader_odom.vangular = vel_msg->angular.z;
}

// ========================================================================================================================================================================================


// function that actualizes the number of robots in a subteam from the team topic
void num_robots()
{
	int count = 0;

	for(int i = 0; i < teams.team_id.size(); i++){
		if (teams.team_id[i] == teams.team_id[IDstamp]){
			count++;
		} else if (teams.team_id[i] == 0){
			break;
		}
	}

	subteam_order.num_robots = count;
}

// ========================================================================================================================================================================================


// function to resize the array that saves the order of the subteam accordingly the number of robots
void subteam_leader_resize()
{
	num_robots();

	if (subteam_order.num_robots != subteam_order.order.size() || subteam_order.order[0] != IDstamp){
		subteam_order.order.resize(subteam_order.num_robots , -1);
		subteam_order.order[0] = IDstamp;
	}
}

// ========================================================================================================================================================================================


// calback function for the subteam_x/order topic
void subteam_orderCallback(const co_coverage::SubteamOrder::ConstPtr& msg)
{
	subteam_order.order = msg->order;
	subteam_order.num_robots = msg->num_robots;

	if(IDstamp == IDleaderstamp){		
		subteam_leader_resize();

		if (subteam_order.num_robots > 1 && subteam_order.order[1] != -1){
			status.leading = subteam_order.order[1];
		} else {
			status.leading = IDstamp;
		}

		subteam_parameters.lid = lid;
		subteam_parameters.lambda = lambda;
		subteam_parameters.tau_delta = tau_delta;
		subteam_parameters.mu = mu;
		subteam_parameters.gamma = ingamma; 
		subteam_parameters.angle_desired = angle_desired;
		subteam_parameters.curve = curve;
		subteam_parameters.order_inv = order_inv;
		
	} else {
		for(int i = 0; i < (msg->num_robots); i++){
			if (msg->order[i] == IDleaderstamp){
				if (msg->order[i+1] != IDstamp){
					subteam_order.order[i+1] = IDstamp;
					return;
				} else {
					if(i+2 <= (msg->num_robots - 1)){
						status.leading = subteam_order.order[i+2];
					} else {
						status.leading = IDstamp;
					}
				}
				
			} else if (msg->order[i] == -1){
				return;
			}
		}
	}	
	
}

// ========================================================================================================================================================================================


// callback function for the subteam_x/parameters topic
void subteam_parametersCallback(const co_coverage::SubteamParameters::ConstPtr& msg)
{
	if (IDstamp != IDleaderstamp) {
		lid = msg->lid;
		lambda = msg->lambda;
		tau_delta = msg->tau_delta;
		mu = msg->mu;
		ingamma = msg->gamma; 
		angle_desired = msg->angle_desired;
		curve = msg->curve;
		order_inv = msg->order_inv;

		// targetOblique.setup(lid, lambda, tau_delta, mu, ingamma, angle_desired);
	}
}

// ========================================================================================================================================================================================


// Get the point for the robot to follow the line
void getFollowPoint(){

	// Convert robot pose to polar coordinates
    double robot_range, robot_angle;
    cartesianToPolar(follower_odom.xPos, follower_odom.yPos, robot_range, robot_angle);

    // Calculate the desired angle based on the given line angle
    double desired_angle = robot_angle + coverage_angle;

    // Calculate the nearest point on the line to the robot
    double line_vector_x = std::cos(coverage_angle);
    double line_vector_y = std::sin(coverage_angle);
    double robot_vector_x = follower_odom.xPos - x_ini;
    double robot_vector_y = follower_odom.yPos - y_ini;
    double dot_product = line_vector_x * robot_vector_x + line_vector_y * robot_vector_y;
    double line_projection_x = x_ini + dot_product * line_vector_x;
    double line_projection_y = y_ini + dot_product * line_vector_y;

    // // Check if the robot is on the line
    // bool on_line = std::abs(dot_product) < 0.1;

    // Calculate the range to the nearest point on the line
    double follow_point_range = std::sqrt((line_projection_x - follower_odom.xPos) * (line_projection_x - follower_odom.xPos) +
                                          (line_projection_y - follower_odom.yPos) * (line_projection_y - follower_odom.yPos));

    // // Adjust the follow point range if the robot is already on the line
    // if (on_line){
    //     follow_point_range += 1.0; // Move forward along the line
	// }

    // Convert the range and desired angle back to Cartesian coordinates
    polarToCartesian(follow_point_range, desired_angle, line_followPoint.x, line_followPoint.y);

	line_followPoint.x += follower_odom.xPos + 1.0*cos(coverage_angle);
	line_followPoint.y += follower_odom.yPos + 1.0*sin(coverage_angle);

    // Calculate the pose of the point the robot should follow
    line_followPoint.theta = desired_angle - follower_odom.angle;

}

// ========================================================================================================================================================================================


// function that takes a given order array and inverts it, used to reverse the subteam order
void invertSubteam()
{
	subteam_order_aux = order_inv;
	std::reverse(subteam_order_aux.begin(), subteam_order_aux.end());

	for(int i = 0; i < subteam_order.num_robots; i++){
		if (subteam_order_aux[i] == IDstamp){
			if (i == 0){
				IDleaderstamp = IDstamp;
				angle_desired = -angle_desired;
			} else {
				IDleaderstamp = subteam_order_aux[i-1];
			}
		}
	}

	status.following = IDleaderstamp;

	curve = 0;
}

// ========================================================================================================================================================================================


// main movement function with 3 options: leader movement, go to a specific point in the map or following
void robotMovement(const sensor_msgs::LaserScan::ConstPtr& pt)
{
	time_t seconds_past_epoch = time(0);

	double target_inli, target_inthetai, target_invj;

	Repulsive repulsive(pt->angle_increment, pt->ranges.size());

	if (goToPoint){
		// --> 1st estimate marker/leader pose and velocities (camera simulation without field of vision)
		target_inli = dist_Euclidian2((x_ini + IDstamp), y_ini, follower_odom.xPos, follower_odom.yPos);
		target_inthetai = -wraptoPI((follower_odom.angle - atan2((y_ini - follower_odom.yPos), ((x_ini + IDstamp) - follower_odom.xPos))));
		target_invj = vel_points;
		
		targetColumn.update(target_inli, target_inthetai, target_invj);
		targetColumn.upforces();

	} else  if (IDstamp == IDleaderstamp){
		// --> 1st estimate marker/leader pose and velocities (camera simulation without field of vision)
		getFollowPoint();

		status.header.frame_id = stampname + "(" + to_string(line_followPoint.x).c_str() + "," + to_string(line_followPoint.y).c_str() + ")";

		target_inli = dist_Euclidian2(line_followPoint.x, line_followPoint.y, follower_odom.xPos, follower_odom.yPos);
		target_inthetai = -wraptoPI((follower_odom.angle - atan2((line_followPoint.y - follower_odom.yPos), (line_followPoint.x - follower_odom.xPos))));
		target_invj = vel_coverage;

		// target_inli = dist_Euclidian2((x_ini + IDstamp), (y_ini + follower_odom.yPos + midpoint), follower_odom.xPos, follower_odom.yPos);
		// target_inthetai = -wraptoPI((follower_odom.angle - atan2(((y_ini + follower_odom.yPos + midpoint) - follower_odom.yPos), ((x_ini + IDstamp) - follower_odom.xPos))));
		// target_invj = vel_coverage;
		
		targetColumn.update(target_inli, target_inthetai, target_invj);
		targetColumn.upforces();

	} else {
		// --> 1st estimate marker/leader pose and velocities (camera simulation without field of vision)
		target_inli = dist_Euclidian2((leader_odom.xPos + sin(leader_odom.angle)), (leader_odom.yPos + cos(leader_odom.angle)), follower_odom.xPos, follower_odom.yPos);
		target_inthetai = -wraptoPI((follower_odom.angle - atan2(((leader_odom.yPos + cos(leader_odom.angle)) - follower_odom.yPos), ((leader_odom.xPos + sin(leader_odom.angle)) - follower_odom.xPos))));
		target_invj = leader_odom.vlinear * 2;

		targetColumnFollow.update(target_inli, target_inthetai, target_invj);
		targetColumnFollow.upforces();
	}

	geometry_msgs::PointStamped laser_point;
	laser_point.header.frame_id = stampname + "/base_laser_link";
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
			listenerscan->waitForTransform(stampname + "/base_link", stampname + "/base_laser_link", ros::Time(0), ros::Duration(0.01));
			listenerscan->transformPoint(stampname + "/base_link", laser_point, base_point);
			repulsive.d[i] = sqrt(base_point.point.x*base_point.point.x + base_point.point.y*base_point.point.y);
			repulsive.angle[i] = atan2(base_point.point.y, base_point.point.x);
		}
		catch(tf::TransformException& ex){
		ROS_ERROR("Received an exception trying to transform a point from base_laser_link to base_link: %s",ex.what());
		}
	}

	if(!goToPoint && IDstamp != IDleaderstamp){
		// update repulsive forces
		repulsive.upforces(targetColumnFollow.li, targetColumnFollow.thetai);

		// update follower command values
		follower.updatecmd(targetColumnFollow.vid, targetColumnFollow.fangular, repulsive.vid, repulsive.fangular, repulsive.U_positive);

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

// ========================================================================================================================================================================================


// function to receive LRF messages and update target information
void scanReceived(const sensor_msgs::LaserScan::ConstPtr& msg)
{	
	// only if the robots are ready to work (status.status = 1) we can get movement
	if (status.status == 1 || goToPoint){
		robotMovement(msg);
	}
}

// ========================================================================================================================================================================================


// function that the robot is in a specific point of the map
bool initCoverage()
{
	if (follower_odom_arrived){
		if (follower_odom.xPos < (x_ini + IDstamp + dist_threshold) && follower_odom.xPos > (x_ini + IDstamp - dist_threshold) && follower_odom.yPos < (y_ini + dist_threshold) && follower_odom.yPos > (y_ini - dist_threshold)){
			publishVelocity(0, 0);
			return true;
		}
	}

	return false;
}

// ========================================================================================================================================================================================


// function that makes the robot go to a specific angle
bool standTurn(double angle)
{
	publishVelocity(0, 0);

	if (abs(angle - follower_odom.angle) < M_PI/360){
		return true;
	}

	publishVelocity(0, 1.0 * (angle - follower_odom.angle) / (M_PI/2));

	return false;

}

// ========================================================================================================================================================================================


// callback function for the topic leadingrobot/status
void follower_statusCallback(const co_coverage::Status::ConstPtr & msg)
{	
	// if the robot wich this robot is leading is ready, than this robot can be ready too
	if(msg->status == 1){
		status.status = 1;
	}
}

// ========================================================================================================================================================================================


// main function for the co-coverage task
int main(int argc, char** argv){
	ros::init(argc, argv, "rf");

	// listener
	listenerscan = new tf::TransformListener(ros::Duration(1.0), true);

	// handlers
	ros::NodeHandle pn("~");
	ros::NodeHandle node;

	// read parameters
	pn.getParam("idstamp", IDstamp);
	pn.getParam("idleaderstamp", IDleaderstamp);

	// formation parameters
	stampname = "/robot_" + to_string(IDstamp);
	leaderstampname = "/robot_" + to_string(IDleaderstamp);
	lid = 0.1;
	lambda = 1.0;
	tau_delta = 2.0;
	// mu = 1.0;
	// ingamma = 0.0;
	// angle_desired = -0.5;
	cvrep = 1.0;
	cvatt = 0.3;	
	curve = 0;

	// set up target and follower classes
	targetColumnFollow.setup(lid, lambda, tau_delta);
	follower.setup(cvrep, cvatt);
	targetColumn.setup(0, lambda, tau_delta);



	// descriptor for which robot is sending to each topic with the custom msgs 
	status.header.frame_id = stampname;
	teams.header.frame_id = stampname;
	teams.team_id.resize((IDstamp+1));
	subteam_order.header.frame_id = stampname;
	subteam_parameters.header.frame_id = stampname;
	status.following = IDleaderstamp;

	// initializing some variables
	subteam_order.num_robots = 0; 
	status.status = 2; // Always start as not ready
	curr_subteam = "unnamed";
	leadingstampname = "unknown";

	// subscribe to LRF, follower current command values, follower amcl_pose, leader amcl_posoe, leader command values, team management, subteam order, subteam used parameters and follower status
	ros::Subscriber follower_lrf_sub, follower_cv_sub, follower_pose_sub, leader_pose_sub, leader_cv_sub, team_sub, subteam_order_sub, subteam_parameters_sub, follower_status_sub;

	// movement parameters
	x_ini = 2.0;
	y_ini = 1.0;
	goToPoint = true;
	bool alreadyChanged = false;
	curve = 0;

	// publish velocity command values
	follower_cv_pub = node.advertise<geometry_msgs::Twist>(stampname + "/cmd_vel", 1);

	// publish robot status
	ros::Publisher status_pub = node.advertise<co_coverage::Status>(stampname + "/status", 1);

	// publish team management status
	ros::Publisher teams_pub = node.advertise<co_coverage::Team>("/team", 1);
	ros::Publisher subteam_order_pub = node.advertise<co_coverage::SubteamOrder>(curr_subteam + "/order", 1);
	ros::Publisher subteam_parameters_pub = node.advertise<co_coverage::SubteamParameters>(curr_subteam + "/parameters", 1);


	// start with null velocity
	publishVelocity(0, 0);

	// initialing some varibles for the leader of the subteams
	if(IDstamp == IDleaderstamp){
		teams.team_id[IDstamp] += 1;
		teams.team_num += 1;
		teams_pub.publish(teams);
		angle_desired = -angle_desired;
	}

	// best coverage angle, should run once and save the best coverage angle for each cell
	coverage_angle = M_PI/2; //getBestCoverageAngle(); // TO DO
	
	// main loop
	while(ros::ok()){

		// go to a certain point mode, if activated the robot goes to the specific point and gets to a specific angle
		if (goToPoint){
			status.status = 2;
			if (initCoverage()){
				if (standTurn(coverage_angle)){
					goToPoint = false;
					publishVelocity(0, 0);
				} 
			}
		} else {

			if (status.leading == IDstamp){
				status.status = 1;
			} 

			//reverse subteam order test
			// if(invert_possible){
			// 	if (IDstamp == IDleaderstamp){
			// 		order_inv = subteam_order.order;
			// 	}
			// 	invert_possible = false;
			// }
		}

		// the robots that are not leaders subscribe to the parameters and to the leader's pose and command values topics
		if (IDstamp != IDleaderstamp){
			subteam_parameters_sub = node.subscribe<co_coverage::SubteamParameters>(curr_subteam + "/parameters", 1, subteam_parametersCallback);

			leader_pose_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(leaderstampname + "/amcl_pose", 1, &odom_leaderCallback);
			leader_cv_sub = node.subscribe(leaderstampname + "/cmd_vel", 1, vel_leaderCallback);
		
		// the leaders publish the parameters to the topic
		} else{
			subteam_parameters_pub.publish(subteam_parameters);
		}

		// code to make the curves to the movement, now is only inversing the order of the subteam
		if (curve != 0 && status.status == 1){
			status.status = 2;
			invertSubteam();

			if(status.leading == IDstamp){
				status.status = 1;
			}
		}

		// team management
		team_sub = node.subscribe("/team", 1, teamStatusCallback);
		teams.header.stamp = ros::Time::now();
		teams_pub.publish(teams);

		// status of the robots (this robot and the one it is leading)
		status.header.stamp = ros::Time::now();
		status.subteam = teams.team_id[IDstamp];
		status_pub.publish(status);
		follower_status_sub = node.subscribe(leadingstampname + "/status", 10, follower_statusCallback);

		// subteam management
		subteam_order_sub = node.subscribe(curr_subteam + "/order", 1, subteam_orderCallback);
		subteam_order.header.stamp = ros::Time::now();
		subteam_order_pub.publish(subteam_order);

		// get owned values for LRF, command values and pose
		follower_lrf_sub  = node.subscribe(stampname + "/base_scan", 1, scanReceived);
		follower_cv_sub = node.subscribe(stampname + "/cmd_vel", 1, velReceive);
		follower_pose_sub = node.subscribe<geometry_msgs::PoseWithCovarianceStamped>(stampname + "/amcl_pose", 1, &odom_followerCallback);		

		// tests if there is a new leader, actualizes the leaderstampname parameter and make the connections with the old leader shutdown; 
		if (strcmp(leaderstampname.c_str(), ("/robot_" + to_string(IDleaderstamp)).c_str()) != 0){
			leader_pose_sub.shutdown();
			leader_cv_sub.shutdown();

			leaderstampname = "/robot_" + to_string(IDleaderstamp);
		}

		// tests if the robot is a new subteam, actualizes the curr_subteam parameter and make the connections with the old subteam shutdown; 
		if(strcmp(curr_subteam.c_str(), ("/subteam_" + to_string(teams.team_id[IDstamp])).c_str()) != 0){
			curr_subteam = "/subteam_" + to_string(teams.team_id[IDstamp]);
			subteam_order_sub.shutdown();
			subteam_order_pub.shutdown();
			subteam_parameters_sub.shutdown();
			subteam_parameters_pub.shutdown();
			subteam_order_pub = node.advertise<co_coverage::SubteamOrder>(curr_subteam + "/order", 1);
			subteam_parameters_pub = node.advertise<co_coverage::SubteamParameters>(curr_subteam + "/parameters", 1);
		}


		// tests if it is leading a new robot, actualizes the leadingstampname parameter and make the connections with the old shutdown; 
		if(strcmp(leadingstampname.c_str(), ("/robot_" + to_string(status.leading)).c_str()) != 0){
			leadingstampname = "/robot_" + to_string(status.leading);
			follower_status_sub.shutdown();
		}

		ros::spinOnce();
	}

	return 0;
};
