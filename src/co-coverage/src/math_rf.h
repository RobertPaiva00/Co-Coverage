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