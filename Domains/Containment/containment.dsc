// This is an example description file for specifying the environment
// when using TBSim.  


//======
// SIMULATION BOUNDARY
//======
//
// bounds left right bottom top
//
// bounds statements set the bounds of the visible "playing field" in
// meters for a simulation.   If the aspect ratio of the bounds are not
// the same as the graphical area set aside by the simulation, then
// the robots may wander off the screen. 

bounds -10 10 -10 10


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



// Down
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment -1 -2 1.570796327 x000000 xFF0000 2

robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
    containment 1 -2 1.570796327 x000000 xFF0000 2


// Right
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
    containment 2 -1 3.141592654 x000000 xFF0000 2

robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
    containment 2 1 3.141592654 x000000 xFF0000 2


// Up
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
    containment 1 2 4.712388981 x000000 xFF0000 2

robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
    containment -1 2 4.712388981 x000000 xFF0000 2


// Left
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment -2 1 0 x000000 xFF0000 2

robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment -2 -1 0 x000000 xFF0000 2
