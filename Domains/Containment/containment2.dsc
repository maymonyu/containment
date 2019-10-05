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
	containment 80.8182421042625 73.75743509005417 3.5464844398748765 x000000 xFF0000 2 3.5464844398748765 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.04560526065625 77.89358772513543 3.5464844398748765 x000000 xFF0000 2 3.5464844398748765 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.27296841705 82.02974036021669 3.5464844398748765 x000000 xFF0000 2 3.5464844398748765 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.50033157344375 86.16589299529795 3.5464844398748765 x000000 xFF0000 2 3.5464844398748765 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.7276947298375 90.30204563037921 3.5464844398748765 x000000 xFF0000 2 3.5464844398748765 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.36664993691423 89.19241131488826 5.3702775855669 x000000 xFF0000 2 5.3702775855669 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.80586743064947 86.44089756004732 5.3702775855669 x000000 xFF0000 2 5.3702775855669 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.24508492438472 83.68938380520638 5.3702775855669 x000000 xFF0000 2 5.3702775855669 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.68430241811997 80.93787005036543 5.3702775855669 x000000 xFF0000 2 5.3702775855669 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.12351991185522 78.18635629552449 5.3702775855669 x000000 xFF0000 2 5.3702775855669 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.56273740559047 75.43484254068355 5.3702775855669 x000000 xFF0000 2 5.3702775855669 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.93333218841452 74.36344100794652 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.39633258826763 73.78756998861063 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.85933298812074 73.21169896927474 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.32233338797386 72.63582794993884 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.78533378782697 72.05995693060295 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 78.24833418768009 71.48408591126706 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.7113345875332 70.90821489193117 1.4424730991091017 x000000 xFF0000 2 1.4424730991091017 7 0

bounds 21.562737405590468 112.7113345875332 40.908214891931166 130.3020456303792 