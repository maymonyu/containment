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
	containment 51.137956343300964 61.87347885566346 3.43304944806766 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 49.41386902990289 67.62043656699036 3.43304944806766 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.74988615940566 69.0 4.71238898038469 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.74988615940566 69.0 4.71238898038469 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.292418171537875 64.61372742693194 0.06656816377582375 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.691532234680516 58.62701647979229 0.06656816377582375 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.090646297823156 52.64030553265263 0.06656816377582375 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.12801459752873 55.602504561727734 1.873681195169868 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.85489446573891 57.392154520543414 1.873681195169868 x000000 xFF0000 2 3.14
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.581774333949085 59.181804479359094 1.873681195169868 x000000 xFF0000 2 3.14

bounds 10.292418171537875 77.58177433394908 27.640305532652633 94.0 