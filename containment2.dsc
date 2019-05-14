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
	containment 10.920251505000728 40.68711800117664 1.8018869939907936 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.760754515002183 42.06135400352993 1.8018869939907936 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.079748494999272 43.31288199882336 1.8018869939907936 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.0 47.0 3.141592653589793 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.0 53.0 3.141592653589793 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.0 58.0 3.141592653589793 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.316718427000254 62.34164078649987 4.2487413713838835 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.950155281000757 65.02492235949963 4.2487413713838835 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.683281572999748 65.65835921350012 4.2487413713838835 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.115428157077535 66.17583661630786 4.990688639389801 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 8.884571842922469 65.82416338369214 4.990688639389801 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 6.23923566684867 62.00955416439162 0.07982998571223732 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 6.717707000546011 56.02866249317488 0.07982998571223732 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 7.196178334243352 50.047770821958125 0.07982998571223732 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 7.674649667940693 44.06687915074137 0.07982998571223732 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 7.76076433315133 42.99044583560838 0.07982998571223732 x000000 xFF0000 2

bounds -8.760764333151329 40.0 25.687118001176643 81.17583661630786 