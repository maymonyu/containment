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
	containment 49.33589941132431 50.50384911698647 5.695182703632018 x000000 xFF0000 2 5.695182703632018 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.562398430198165 46.34359764529726 5.695182703632018 x000000 xFF0000 2 5.695182703632018 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.78889744907202 42.183346173608044 5.695182703632018 x000000 xFF0000 2 5.695182703632018 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.01539646794587 38.02309470191883 5.695182703632018 x000000 xFF0000 2 5.695182703632018 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 38.24189548681972 33.862843230229615 5.695182703632018 x000000 xFF0000 2 5.695182703632018 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.239948473494174 34.0023650650602 1.3397056595989996 x000000 xFF0000 2 1.3397056595989996 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.10703431516205 32.85716839643246 1.3397056595989996 x000000 xFF0000 2 1.3397056595989996 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.97412015682993 31.711971727804727 1.3397056595989996 x000000 xFF0000 2 1.3397056595989996 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.84120599849781 30.56677505917699 1.3397056595989996 x000000 xFF0000 2 1.3397056595989996 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.51198671526333 35.521576087474 2.6344941491974563 x000000 xFF0000 2 2.6344941491974563 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.94020137115649 39.89236246808169 2.6344941491974563 x000000 xFF0000 2 2.6344941491974563 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.98201335214885 43.9233826422065 3.797288279831329 x000000 xFF0000 2 3.797288279831329 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.933459547900384 47.886502587729495 3.797288279831329 x000000 xFF0000 2 3.797288279831329 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.88490574365192 51.8496225332525 3.797288279831329 x000000 xFF0000 2 3.797288279831329 3 0

bounds 8.241895486819722 90.94020137115649 0.5667750591769902 91.8496225332525 