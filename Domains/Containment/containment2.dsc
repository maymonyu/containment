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
	containment 71.31405435355413 35.01648364123578 0.10487693873023374 x000000 xFF0000 2 0.10487693873023374 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.83747827614434 30.04395637662875 0.10487693873023374 x000000 xFF0000 2 0.10487693873023374 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.36090219873455 25.07142911202172 0.10487693873023374 x000000 xFF0000 2 0.10487693873023374 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.88432612132476 20.098901847414687 0.10487693873023374 x000000 xFF0000 2 0.10487693873023374 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.55609816270595 24.325204505637398 2.694072678432623 x000000 xFF0000 2 2.694072678432623 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.7197535006298 28.832819792978768 2.694072678432623 x000000 xFF0000 2 2.694072678432623 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.88340883855366 33.340435080320134 2.694072678432623 x000000 xFF0000 2 2.694072678432623 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.04706417647752 37.8480503676615 2.694072678432623 x000000 xFF0000 2 2.694072678432623 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 84.21071951440138 42.355665655002866 2.694072678432623 x000000 xFF0000 2 2.694072678432623 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.27653284002682 41.54708550286863 5.117280766669773 x000000 xFF0000 2 5.117280766669773 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.68080768993653 39.577489009972794 5.117280766669773 x000000 xFF0000 2 5.117280766669773 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.08508253984624 37.607892517076955 5.117280766669773 x000000 xFF0000 2 5.117280766669773 3 0

bounds 40.08508253984624 114.21071951440138 -9.901098152585313 82.35566565500287 