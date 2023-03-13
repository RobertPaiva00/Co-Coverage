//
//						 follower.h
//

/************************************************************************
			DECLARATION OF THE CLASS FOLLOWER
************************************************************************/
// Class for Follower
// A data has 6 fields: 
// 		vlinear, current follower linear velocity
//		vangular, current follower angular velocity
//		cmd_linear, linear velocity to apply at the wheels
//		cmd_angular, angular velocity to apply at the wheels
//		cvrep, relaxation rate to linear velocity avoiding obstacles
//		cvatt, relaxation rate to linear velocity following target

class Follower
{
public:
	double vlinear, vangular, cmd_linear, cmd_angular;

	double cvrep;
	double cvatt;

	// constructor
	void setup(double incvrep, double incvatt);

	// routines
	void update(double invlinear, double invangular);
	void print(void);
	void updatecmd(double targetflinear, double targetfangular, double obstaclesflinear, double obstaclesfangular, bool U_positive);
};


/************************************************************************
			BODY OF THE MEMBER ROUTINES
************************************************************************/
// Constructor		
void Follower::setup(double incvrep, double incvatt)
{
	cvrep = incvrep;
	cvatt = incvatt;
}

// Routine to update vlinear and vangular
void Follower::update(double invlinear, double invangular)
{
	vlinear = invlinear; vangular = invangular;
}

// Routine to print current linear and angular velocities
void Follower::print(void)
{
	ROS_INFO("Follower -- vlinear, vangular = %1.2f, %1.2f", vlinear, vangular);
}

// Routine to update command velocities
void Follower::updatecmd(double vtar, double targetfangular, double vobs, double obstaclesfangular, bool U_positive)
{
	// When U_positive is true then repulsive velocities are applied, otherwise attractive forces are applied
	if(U_positive)
		cmd_linear = - cvrep*(vlinear - vobs);
	else
		cmd_linear = - cvatt*(vlinear - vtar);

	// fstoch, to avoid local minimum
	if(fabs(targetfangular + obstaclesfangular) <= 0.03)
		cmd_angular = targetfangular;
	else
		cmd_angular = targetfangular + obstaclesfangular;

	print();
}
