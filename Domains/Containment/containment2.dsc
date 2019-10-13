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
	containment 24.699586468661195 13.472125772598103 2.539305307454829 x000000 xFF0000 2 2.539305307454829 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.53223058309652 17.59233539359494 2.539305307454829 x000000 xFF0000 2 2.539305307454829 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.364874697531846 21.71254501459178 2.539305307454829 x000000 xFF0000 2 2.539305307454829 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.19751881196717 25.832754635588618 2.539305307454829 x000000 xFF0000 2 2.539305307454829 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.439913444145375 27.370672437056975 4.645820816608866 x000000 xFF0000 2 4.645820816608866 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.45098765486233 27.703267489675845 4.645820816608866 x000000 xFF0000 2 4.645820816608866 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.462061865579287 28.035862542294716 4.645820816608866 x000000 xFF0000 2 4.645820816608866 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.102880419653637 23.31275821647204 0.231090667195897 x000000 xFF0000 2 0.231090667195897 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.248077088281374 18.44567237480416 0.231090667195897 x000000 xFF0000 2 0.231090667195897 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.39327375690911 13.578586533136281 0.231090667195897 x000000 xFF0000 2 0.231090667195897 3 0

bounds -11.537938134420713 63.19751881196717 -16.527874227401895 68.03586254229472 