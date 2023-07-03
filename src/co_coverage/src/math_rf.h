//
//					math_rf.h
//
/**************************************************************
			REQUIRED MATH VARIABLES AND FUNCTIONS
**************************************************************/

// PI value
#define PI 3.14159265359

// Euler value
const double EulerConstant = std::exp(1.0);
				
// Based on WIKIPEDIA "Sign (mathematics)"
int sign(double x)
{
	return(x/fabs(x));
}

// Euclidean distance
double dist_Euclidian(double d1, double d2, double alpha1, double alpha2){
	return sqrt(d1*d1 + d2*d2 - 2*d1*d2*cos(alpha1-alpha2));
}

// Euclidean distance 2
double dist_Euclidian2(double p1, double p2, double q1, double q2){
	return sqrt((q1-p1)*(q1-p1) + (q2-p2)*(q2-p2));
}

// Wrap to PI
double wraptoPI(double angle)
{
	while(angle > PI){
		angle -= 2.0*PI;
	}
	while(angle <= -PI){
		angle += 2.0*PI;
	}
	return angle;
}

// Get the angle from the quaternion
double getAngle(double x, double y, double z, double w){
	tf2::Quaternion quat(x, y, z, w);
    tf2::Matrix3x3 mat(quat);

	double roll, pitch, yaw;
	mat.getRPY(roll, pitch, yaw);

	return yaw;
}

// Function to convert Cartesian coordinates to polar coordinates
void cartesianToPolar(double x, double y, double& range, double& angle)
{
    range = std::sqrt(x*x + y*y);
    angle = std::atan2(y, x);
}

// Function to convert polar coordinates to Cartesian coordinates
void polarToCartesian(double range, double angle, double& x, double& y)
{
    x = range * std::cos(angle);
    y = range * std::sin(angle);
}
