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
	containment 35.730049592795964 76.54909641020572 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 38.32512398198991 72.87274102551429 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.92019837118386 69.19638564082285 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.515272760377805 65.52003025613142 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.11034714957175 61.843674871439994 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.7054215387657 58.16731948674857 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.300495927959645 54.49096410205714 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.89557031715359 50.814608717365715 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.49064470634754 47.13825333267429 0.6146629519221655 x000000 xFF0000 2 0.6146629519221655 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.70701007923113 42.70701007923113 2.356194490192345 x000000 xFF0000 2 2.356194490192345 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.88899059457059 45.88899059457059 2.356194490192345 x000000 xFF0000 2 2.356194490192345 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.070971109910055 49.070971109910055 2.356194490192345 x000000 xFF0000 2 2.356194490192345 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.25295162524952 52.252951625249516 2.356194490192345 x000000 xFF0000 2 2.356194490192345 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.43493214058898 55.43493214058898 2.356194490192345 x000000 xFF0000 2 2.356194490192345 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.61691265592845 58.61691265592844 2.356194490192345 x000000 xFF0000 2 2.356194490192345 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.7988931712679 61.7988931712679 2.356194490192345 x000000 xFF0000 2 2.356194490192345 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.98087368660737 64.98087368660737 2.356194490192345 x000000 xFF0000 2 2.356194490192345 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.95879556549662 68.31509680900088 4.457206589763871 x000000 xFF0000 2 4.457206589763871 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.60451783971082 69.45099534616239 4.457206589763871 x000000 xFF0000 2 4.457206589763871 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.25024011392503 70.5868938833239 4.457206589763871 x000000 xFF0000 2 4.457206589763871 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.89596238813923 71.7227924204854 4.457206589763871 x000000 xFF0000 2 4.457206589763871 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.54168466235343 72.85869095764691 4.457206589763871 x000000 xFF0000 2 4.457206589763871 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.18740693656763 73.99458949480842 4.457206589763871 x000000 xFF0000 2 4.457206589763871 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.833129210781834 75.13048803196993 4.457206589763871 x000000 xFF0000 2 4.457206589763871 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.478851484996035 76.26638656913144 4.457206589763871 x000000 xFF0000 2 4.457206589763871 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.124573759210236 77.40228510629295 4.457206589763871 x000000 xFF0000 2 4.457206589763871 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.77029603342444 78.53818364345446 4.457206589763871 x000000 xFF0000 2 4.457206589763871 10 0

bounds 5.7300495927959645 107.98087368660737 12.707010079231132 118.53818364345446 