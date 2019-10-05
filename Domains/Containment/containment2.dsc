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
	containment 62.4086632973047 60.48838692342774 5.240463428811049 x000000 xFF0000 2 5.240463428811049 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.089768792812535 57.96903179580731 5.240463428811049 x000000 xFF0000 2 5.240463428811049 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.77087428832037 55.44967666818688 5.240463428811049 x000000 xFF0000 2 5.240463428811049 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 49.45197978382821 52.93032154056645 5.240463428811049 x000000 xFF0000 2 5.240463428811049 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.13308527933604 50.410966412946024 5.240463428811049 x000000 xFF0000 2 5.240463428811049 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.81419077484388 47.891611285325595 5.240463428811049 x000000 xFF0000 2 5.240463428811049 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.495296270351716 45.372256157705166 5.240463428811049 x000000 xFF0000 2 5.240463428811049 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.17640176585955 42.85290103008474 5.240463428811049 x000000 xFF0000 2 5.240463428811049 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.857507261367385 40.33354590246431 5.240463428811049 x000000 xFF0000 2 5.240463428811049 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.50716487361048 38.49488223313537 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.57583222964415 35.58869126453989 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.64449958567782 32.68250029594441 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.71316694171149 29.776309327348926 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.781834297745164 26.870118358753444 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.850501653778835 23.963927390157963 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.91916900981251 21.05773642156248 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.98783636584618 18.151545452967 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.05650372187985 15.245354484371518 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.12517107791352 12.339163515776036 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.19383843394719 9.432972547180555 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.26250578998086 6.526781578585072 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.48776633528898 11.004304945972027 2.852617243597227 x000000 xFF0000 2 2.852617243597227 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 80.91261767570379 15.796986727367296 2.852617243597227 x000000 xFF0000 2 2.852617243597227 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.33746901611859 20.589668508762564 2.852617243597227 x000000 xFF0000 2 2.852617243597227 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 83.7623203565334 25.38235029015783 2.852617243597227 x000000 xFF0000 2 2.852617243597227 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 85.1871716969482 30.175032071553098 2.852617243597227 x000000 xFF0000 2 2.852617243597227 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 86.612023037363 34.967713852948364 2.852617243597227 x000000 xFF0000 2 2.852617243597227 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 88.0368743777778 39.76039563434363 2.852617243597227 x000000 xFF0000 2 2.852617243597227 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 89.46172571819261 44.5530774157389 2.852617243597227 x000000 xFF0000 2 2.852617243597227 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 84.78941204007002 46.33338213494457 4.042750034708052 x000000 xFF0000 2 4.042750034708052 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 80.86918291776121 49.43689685677238 4.042750034708052 x000000 xFF0000 2 4.042750034708052 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 76.9489537954524 52.540411578600185 4.042750034708052 x000000 xFF0000 2 4.042750034708052 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.02872467314359 55.64392630042799 4.042750034708052 x000000 xFF0000 2 4.042750034708052 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.10849555083477 58.7474410222558 4.042750034708052 x000000 xFF0000 2 4.042750034708052 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.18826642852596 61.850955744083606 4.042750034708052 x000000 xFF0000 2 4.042750034708052 6 0

bounds -2.1424927386326154 119.46172571819261 -23.473218421414927 101.8509557440836 