//======
// SEED
//======
//
// seed number
//
// The seed statement sets the random number seed.  The default is
// -1

seed 3


//======
// TIME
//======
//
// time accel_rate
//
// DEPRECATED.  This statement is ignored.

//======
// TIMEOUT
//======
//
// timeout time
//
// The timeout statement indicates when the simulation will terminate in
// milliseconds.  The program automatically terminates when this time
// is reached.  If no timeout statement is given, the default is no
// termination.  NOTE: you *must* use a timeout with a trials statement.
//
// timeout 10000 // ten seconds


//======
// TRIALS
//======
//
// trials num_trials
//
// The trials statement indicates that the simulation should be run
// a certain number of times.  Each trial automatically terminates when the
// timeout time is reached, then a new trial is begun.  Note: certain hooks
// are available in the ControlSystem class for you to know when trials
// begin and end.  See the javadoc documentation.
//
// trials 100 // 100 trials


//======
// MAX TIME STEP
//======
//
// maxtimestep milliseconds
//
// DEPRECATED.  This statement is processed as if it were a "timestep" statment.


//======
// TIMESTEP
//======
//
// timestep milliseconds
//
// timestep statements set the time (in milliseconds) transpices
// between discrete simulation steps.

timestep 100 // 1/10th of a second

//======
// WINDOWSIZE
//======
//
// windowsize width height
//
// The windowsize statement gives a default window size.  This can be
// overridden on the command line.

windowsize 500 500


//======
// BACKGROUND COLOR
//======
//
// background color
//
// A background statement sets the background color for the simulation.
// The color must be given in hex format as "xRRGGBB" where RR indicates
// the red component (00 for none, FF for full), GG is the green component,
// and BB is the blue.  Here we use white:

background xFFFFFF


//======
// ROBOTS
//======
//
// robot robottype controlsystem x y theta forecolor backcolor
//              visionclass
//
// robot statements cause a robot with a control system to be instantiated
// in the simulation.  Be sure to include the full class name for the
// abstract robot type and your control system.  The x y and theta
// parameters set the initial position of the robot in the field.
// You can used different colors to tell robots apart from one another.
// The visionclass indicates which color the robots see each other as.



robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.94174202707276 68.41165159458545 1.3734007669450157 x000000 xFF0000 2 0.8475756606708289
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.3543550676819 67.52912898646362 1.3734007669450157 x000000 xFF0000 2 0.8475756606708289
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.76696810829104 66.64660637834179 1.3734007669450157 x000000 xFF0000 2 0.8475756606708289
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.179581148900176 65.76408377021995 1.3734007669450157 x000000 xFF0000 2 0.8475756606708289
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.96797862436532 70.25910594720742 2.91811605244916 x000000 xFF0000 2 2.1457584096970876
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.96527359051568 74.64720379826899 2.91811605244916 x000000 xFF0000 2 2.1457584096970876
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.962568556666035 79.03530164933056 2.91811605244916 x000000 xFF0000 2 2.1457584096970876
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.95986352281639 83.42339950039214 2.91811605244916 x000000 xFF0000 2 2.1457584096970876
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.95715848896675 87.81149735145371 2.91811605244916 x000000 xFF0000 2 2.1457584096970876
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.88029681581009 89.71654299341246 4.317597860684928 x000000 xFF0000 2 2.441851749471909
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.72645066196394 91.44731222418169 4.317597860684928 x000000 xFF0000 2 2.441851749471909
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.572604508117784 93.17808145495091 4.317597860684928 x000000 xFF0000 2 2.441851749471909
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.70779670456963 89.70779670456963 5.497787143782138 x000000 xFF0000 2 2.551498012041188
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.525816189230166 86.52581618923017 5.497787143782138 x000000 xFF0000 2 2.551498012041188
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.343835673890702 83.34383567389071 5.497787143782138 x000000 xFF0000 2 2.551498012041188
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.161855158551237 80.16185515855125 5.497787143782138 x000000 xFF0000 2 2.551498012041188
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.55059755649432 76.34820733051704 0.32175055439664213 x000000 xFF0000 2 2.90976884908939
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.97362250357009 72.07913248928973 0.32175055439664213 x000000 xFF0000 2 2.90976884908939
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.39664745064586 67.81005764806243 0.32175055439664213 x000000 xFF0000 2 2.90976884908939

bounds -4.838144841448763 69.95715848896674 40.764083770219955 118.17808145495091 