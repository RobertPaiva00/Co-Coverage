//
//						 repulsive.h
//

/************************************************************************
			DECLARATION OF THE CLASS REPULSIVE
************************************************************************/
// Class for Repulsive
// A data has 8 fields: 
// 		beta1, controls the overall strength
//		beta2, controls the spatial rate of decay
//		rrobot, leader robot radius
//		t2c, desired time to contact with the obstacle
// 		angle_inc, angular range of each LRF reading
//		size, number of LRF readings
//		d, array of LRF distances in robot coordinate frame
//		angle, array of LRF angles in robot coordinate frame
// 		U, potential function
//		U_pot, boolean to distinguish positive and negative values of U
//		vid, desired robot linear velocity
//		fangular, resultant contribution for angular velocity

class Repulsive
{
	double beta1;
	double beta2;
	double rrobot;
	double t2c;

	double angle_inc;
	int size;

	public:

	double *d, *angle; //space is allocated in the constructor, and filled on main code
	
	double U;
	bool U_positive;

	double vid;
	double fangular;

	// constructor
	Repulsive(double in_angle_inc, int insize);

	// routines
	void upforces(double d_target, double angle_target);
	void clear(void);
};

/************************************************************************
			BODY OF THE MEMBER ROUTINES
************************************************************************/
// Constructor
Repulsive::Repulsive(double in_angle_inc, int insize)
{
	//beta1 = 0.2; //simulador
	beta1 = 0.07; //P3DX (can be to the simulator too)

	beta2 = 5;

	//rrobot = 0.25; //simulador
	rrobot = 0.30; //P3DX (can be to the simulator too)

	t2c = 3.0;

	U = 0.0;
	U_positive = false;

	vid = 0.0;
	fangular = 0.0;

	angle_inc = in_angle_inc;
	size = insize;

	d = (double *) malloc(size * sizeof(double));
	angle = (double *) malloc(size * sizeof(double));
}

// Routine to update vid and fangular
void Repulsive::upforces(double d_target, double angle_target)
{
	double lambda = 0.0, sigma = 0.0;
	int n_median = size;
//	double dmin = 5.0, maxd = 5.0, Ttarget = 0.5, maxdmin = 1.0; // if you want consider obstacles at 5 meters
	double dmin = 5.0, maxd = 1.5, Ttarget = 0.5, maxdmin = 1.0; // if you want only consider obstacles at 1.5 meters

	U = 0.0;
	fangular = 0.0;

	for (int i = 0; i < size; i++){
		if(dist_Euclidian(d[i], d_target, angle[i], angle_target) > Ttarget  && !isnan(d[i])){
			if(d[i] < maxd){
				lambda = beta1*exp(d[i]/beta2);
				sigma = atan(tan(angle_inc/2) + rrobot/(rrobot + d[i]));
				fangular += lambda * (-angle[i]) * exp( -(angle[i]*angle[i]) / (2*sigma*sigma) ) ;
			
				U = U + ( lambda*sigma*sigma * ( exp( -(angle[i]*angle[i]) / (2*sigma*sigma) ) - 1/sqrt(EulerConstant) ) );
				
				if(dmin > d[i])
					dmin = d[i];
			}
		}
	}

	if(U > 0)
		U_positive = true;
	else
		U_positive = false;

	if(dmin > maxdmin)
		vid = maxdmin/t2c;
	else
		vid = dmin/t2c;
}

// Routine to clear LRF data
void Repulsive::clear(void)
{
	free(d);
	free(angle);
}
