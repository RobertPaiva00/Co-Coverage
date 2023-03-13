//
//						 attracoroblique.h
//

/************************************************************************
			DECLARATION OF THE CLASS ATTRACTOROBLIQUE
************************************************************************/
// Class for AttractorOblique
// The oblique attraction has 11 fields: 
// 		li, current distance between robots
// 		lid, desired distance between robots
// 		thetai, direction of leader in robot coordinate frame
// 		vj, leader's current velocity
// 		lambda, strength of attraction
//		tau_delta, smooth the linear velocity
//		mu, tuning parameter
//		gamma, separation between fapproach and fdivert
//		angle_desired, desired relative angle between follower and leader robots
//		fangular, resultant contribution for angular velocity
//		vid, desired robot linear velocity

class AttractorOblique
{
public:
	double li, lid ,thetai, vj, lambda, tau_delta, mu, gamma, angle_desired;
	double fangular;
	double vid;

	// constructor
	void setup(double inlid, double inlambda, double intau_delta, double inmu, double ingamma, double inangle_desired);

	// routines
	void update(double inli, double inthetai, double invj);
	void upforces();
};


/************************************************************************
			BODY OF THE MEMBER ROUTINES
************************************************************************/
// Constructor
void AttractorOblique::setup(double inlid, double inlambda, double intau_delta, double inmu, double ingamma, double inangle_desired)
{
	lid = inlid;
	lambda = inlambda;
	tau_delta = intau_delta;
	mu = inmu;
	gamma = ingamma;
	angle_desired = inangle_desired;
}

// Routine to update li, thetai and vj
void AttractorOblique::update(double inli, double inthetai, double invj)
{
	li = inli;
	thetai = inthetai;
	vj = invj;
}

// Routine to update vid and fangular
void AttractorOblique::upforces()
{
	double fapproach, fdivert, lambda_approach, lambda_divert;

	if(li >= lid){
		vid = vj - (lid - li)/tau_delta;
	}
	else{
		vid = -vj - (lid - li)/tau_delta;
	}


	lambda_approach = 1/(1 + exp(-(li - lid)/mu));
	fapproach = -lambda*lambda_approach*sin(-thetai + angle_desired + sign(-angle_desired)*gamma);

	lambda_divert = 1 - lambda_approach;
	fdivert = -lambda*lambda_divert*sin(-thetai + angle_desired - sign(-angle_desired)*gamma);

	fangular = fapproach + fdivert;
}