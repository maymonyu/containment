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
	containment 28.29000741997774 90.06401187196438 5.724585991836024 x000000 xFF0000 2 5.724585991836024 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.930020139939582 79.88803222390332 5.724585991836024 x000000 xFF0000 2 5.724585991836024 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.570032859901424 69.71205257584226 5.724585991836024 x000000 xFF0000 2 5.724585991836024 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.0171563485093 62.31260274555126 0.691336928769462 x000000 xFF0000 2 0.691336928769462 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.66796891692001 53.067870892054984 0.691336928769462 x000000 xFF0000 2 0.691336928769462 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.318781485330724 43.82313903855871 0.691336928769462 x000000 xFF0000 2 0.691336928769462 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.29256591749376 48.678657057927595 2.0749622882740497 x000000 xFF0000 2 2.0749622882740497 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.79949812581529 54.47558517286361 2.0749622882740497 x000000 xFF0000 2 2.0749622882740497 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.30643033413682 60.272513287799626 2.0749622882740497 x000000 xFF0000 2 2.0749622882740497 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.05745886189827 72.24898840155916 2.9147938055359073 x000000 xFF0000 2 2.9147938055359073 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.13655012135877 83.5903496359237 3.4633432079864352 x000000 xFF0000 2 3.4633432079864352 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.60803782491867 89.34799054377034 4.4674103172578254 x000000 xFF0000 2 4.4674103172578254 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.96632782317469 92.25841804420634 4.4674103172578254 x000000 xFF0000 2 4.4674103172578254 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.32461782143071 95.16884554464234 4.4674103172578254 x000000 xFF0000 2 4.4674103172578254 3 0

bounds -14.429967140098576 103.05745886189827 13.823139038558708 135.16884554464235 