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
	containment 48.50066316380318 91.40026526552127 5.092895357497055 x000000 xFF0000 2 5.092895357497055 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.001326327606364 88.80053053104254 5.092895357497055 x000000 xFF0000 2 5.092895357497055 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.501989491409546 86.20079579656381 5.092895357497055 x000000 xFF0000 2 5.092895357497055 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.00265265521273 83.60106106208508 5.092895357497055 x000000 xFF0000 2 5.092895357497055 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.503315819015917 81.00132632760635 5.092895357497055 x000000 xFF0000 2 5.092895357497055 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.003978982819103 78.40159159312762 5.092895357497055 x000000 xFF0000 2 5.092895357497055 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.59899703964529 73.95342678121193 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.565288312540284 67.23526493215404 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.531579585435278 60.517103083096146 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.49787085833027 53.79894123403825 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.46416213122526 47.08077938498036 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.430453404120254 40.36261753592247 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.940655113136497 36.04547992797499 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.70658601816894 37.84052282114686 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.47251692320138 39.63556571431874 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.23844782823383 41.43060860749061 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.00437873326628 43.22565150066249 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.77030963829873 45.02069439383436 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.53624054333117 46.815737287006236 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.15376324575004 53.30793066846863 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.85411887116113 59.919408245411745 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.55447449657223 66.53088582235486 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.25483012198332 73.14236339929798 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.95518574739441 79.7538409762411 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.6555413728055 86.36531855318421 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.35589699821659 92.97679613012733 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 7 0

bounds -19.40100296035471 99.15376324575004 6.045479927974988 132.97679613012733 