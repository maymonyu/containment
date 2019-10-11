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
	containment 62.17583661630787 60.88457184292247 3.4198923125949046 x000000 xFF0000 2 3.4198923125949046 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.80223097682098 65.69219158112658 3.4198923125949046 x000000 xFF0000 2 3.4198923125949046 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.948858113523706 66.89417820742861 4.3536183101141175 x000000 xFF0000 2 4.3536183101141175 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.267212225678485 68.64979541537056 4.3536183101141175 x000000 xFF0000 2 4.3536183101141175 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 49.883751714630755 63.84500228617434 5.639684198386302 x000000 xFF0000 2 5.639684198386302 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.883751714630755 59.84500228617434 5.639684198386302 x000000 xFF0000 2 5.639684198386302 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.74628496600762 56.669968919104335 0.8441539861131709 x000000 xFF0000 2 0.8441539861131709 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.48333155942592 53.34814972495474 0.8441539861131709 x000000 xFF0000 2 0.8441539861131709 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.26764831850214 54.800841415858976 2.279422598922567 x000000 xFF0000 2 2.279422598922567 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.06393133032862 58.054798283138815 2.279422598922567 x000000 xFF0000 2 2.279422598922567 2 0

bounds 16.883751714630755 93.06393133032861 23.348149724954737 108.64979541537056 