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
	containment 52.0 36.0 1.5707963267948966 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.0 36.0 1.5707963267948966 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.80314427897318 39.346547257456024 3.200348476305516 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.45081214726436 45.336193496506 3.200348476305516 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.17616606585441 50.00517688047501 3.200348476305516 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.99999999999999 53.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.0 53.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.543071206464106 50.37752817163539 5.776086802787249 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.456928793535894 46.62247182836461 5.776086802787249 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.589996820009546 41.45600508798473 0.5585993153435624 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.41000317999046 38.543994912015265 0.5585993153435624 x000000 xFF0000 2

bounds 30.456928793535894 74.80314427897318 21.0 68.0 