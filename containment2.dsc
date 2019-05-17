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
	containment 65.8917778752834 69.6716579996512 0.682316554874748 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.67533362585019 65.01497399895361 0.682316554874748 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.45888937641698 60.35828999825601 0.682316554874748 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.24244512698377 55.70160599755842 0.682316554874748 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.46709783559221 61.26314204926341 2.7032560937318353 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.01370109297653 66.69589566501662 2.7032560937318353 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 84.56030435036085 72.12864928076984 2.7032560937318353 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 87.10690760774517 77.56140289652305 2.7032560937318353 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 89.65351086512949 82.99415651227626 2.7032560937318353 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 92.20011412251381 88.42691012802948 2.7032560937318353 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 86.45179910646823 90.08057533507441 4.3536183101141175 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 80.66600436550966 90.09072846332083 4.9786410295356145 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.87742143808327 88.51202402856818 4.9786410295356145 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.89466359929736 84.2571797320842 5.7707958468688485 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.953096161502 79.0277265093369 5.7707958468688485 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.01152872370665 73.7982732865896 5.7707958468688485 x000000 xFF0000 2

bounds 50.01152872370665 107.20011412251381 40.70160599755842 105.09072846332083 