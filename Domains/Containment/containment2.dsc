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
	containment 84.48841681507051 13.604729426373378 2.6224465393432705 x000000 xFF0000 2 2.6224465393432705 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 86.72104203767626 17.511823565933444 2.6224465393432705 x000000 xFF0000 2 2.6224465393432705 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 88.953667260282 21.41891770549351 2.6224465393432705 x000000 xFF0000 2 2.6224465393432705 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 91.18629248288775 25.326011845053575 2.6224465393432705 x000000 xFF0000 2 2.6224465393432705 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 86.75887261234041 26.13096730337589 4.451786588637349 x000000 xFF0000 2 4.451786588637349 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.4108153841348 27.290449230897384 4.451786588637349 x000000 xFF0000 2 4.451786588637349 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 78.0627581559292 28.449931158418877 4.451786588637349 x000000 xFF0000 2 4.451786588637349 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.52148842666482 25.673348959995838 5.864960977600357 x000000 xFF0000 2 5.864960977600357 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.6938653294243 21.56119699120468 5.864960977600357 x000000 xFF0000 2 5.864960977600357 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.4095459062036 22.937644258560688 0.8850668158886102 x000000 xFF0000 2 0.8850668158886102 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.89235375261855 20.088074202403007 0.8850668158886102 x000000 xFF0000 2 0.8850668158886102 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.37516159903349 17.238504146245326 0.8850668158886102 x000000 xFF0000 2 0.8850668158886102 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 78.85796944544843 14.388934090087645 0.8850668158886102 x000000 xFF0000 2 0.8850668158886102 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.34077729186338 11.539364033929964 0.8850668158886102 x000000 xFF0000 2 0.8850668158886102 5 0

bounds 43.409545906203604 116.18629248288775 -13.460635966070036 53.44993115841888 