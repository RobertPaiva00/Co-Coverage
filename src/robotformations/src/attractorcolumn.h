//
//						 attracorcolumn.h
//

/************************************************************************
			DECLARATION OF THE CLASS ATTRACTORCOLUMN
************************************************************************/
// Class for AttractorColumn
// The column attraction has 8 fields: 
// 		li, current distance between robots
// 		lid, desired distance between robots
// 		thetai, direction of leader in robot coordinate frame
// 		vj, leader's current velocity
// 		lambda, strength of attraction
//		tau_delta, smooth the linear velocity
//		fangular, resultant contribution for angular velocity
//		vid, desired robot linear velocity

class AttractorColumn
{
public:
	double li, lid ,thetai, vj, lambda, tau_delta;
	double fangular;
	double vid;

	// constructor
	void setup(double inlid, double inlambda, double intau_delta);

	// routines
	void update(double inli, double inthetai, double invj);
	void upforces();
};


/************************************************************************
			BODY OF THE MEMBER ROUTINES
************************************************************************/
// Constructor
void AttractorColumn::setup(double inlid, double inlambda, double intau_delta)
{
	lid = inlid;
	lambda = inlambda;
	tau_delta = intau_delta;
}

// Routine to update li, thetai and vj
void AttractorColumn::update(double inli, double inthetai, double invj)
{
	li = inli;
	thetai = inthetai;
	vj = invj;
}

// Routine to update vid and fangular
void AttractorColumn::upforces()
{
	if(li >= lid){
		vid = vj - (lid - li)/tau_delta;
	}
	else{
		vid = -vj - (lid - li)/tau_delta;
	}

	fangular = -lambda*sin(-thetai);
}
