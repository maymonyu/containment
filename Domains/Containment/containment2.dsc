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
	containment 60.60350883972695 64.97368370204791 3.274144185886467 x000000 xFF0000 2 3.274144185886467 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.94269023927186 69.92982320546108 3.274144185886467 x000000 xFF0000 2 3.274144185886467 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.281871638816774 74.88596270887425 3.274144185886467 x000000 xFF0000 2 3.274144185886467 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.74771593398953 78.42287427887958 4.299978538787302 x000000 xFF0000 2 4.299978538787302 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.166929259478586 80.42696844897812 4.299978538787302 x000000 xFF0000 2 4.299978538787302 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.58614258496764 82.43106261907666 4.299978538787302 x000000 xFF0000 2 4.299978538787302 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.00535591045669 84.4351567891752 4.299978538787302 x000000 xFF0000 2 4.299978538787302 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.61728706254639 79.63169294800171 5.783838585499456 x000000 xFF0000 2 5.783838585499456 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 38.22302640914352 75.2422150834298 5.783838585499456 x000000 xFF0000 2 5.783838585499456 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.828765755740655 70.85273721885788 5.783838585499456 x000000 xFF0000 2 5.783838585499456 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.43450510233779 66.46325935428597 5.783838585499456 x000000 xFF0000 2 5.783838585499456 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.04024444893492 62.073781489714044 5.783838585499456 x000000 xFF0000 2 5.783838585499456 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.05985261185422 59.10010527724699 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.1285199678879 56.19391430865151 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.19718732392157 53.287723340056026 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.195607420537435 53.16203906201361 1.9195673303788037 x000000 xFF0000 2 1.9195673303788037 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.89457453797962 54.870754377447135 1.9195673303788037 x000000 xFF0000 2 1.9195673303788037 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.59354165542181 56.57946969288066 1.9195673303788037 x000000 xFF0000 2 1.9195673303788037 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.78410323812898 53.340923885754776 2.44685437739309 x000000 xFF0000 2 2.44685437739309 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.98502523645138 57.18203028374165 2.44685437739309 x000000 xFF0000 2 2.44685437739309 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.18594723477378 61.02313668172853 2.44685437739309 x000000 xFF0000 2 2.44685437739309 3 0

bounds 1.0402444489349207 90.60350883972694 23.162039062013612 124.4351567891752 