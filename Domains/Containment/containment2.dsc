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
	containment 76.40156019094158 41.53869852026925 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.73749384251089 45.769862720718 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.07342749408019 50.001026921166755 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.4093611456495 54.23219112161551 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.7452947972188 58.46335532206426 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.08122844878811 62.69451952251301 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.417162100357416 66.92568372296176 3.7035142158466083 x000000 xFF0000 2 3.7035142158466083 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.98264827331288 64.61590297194839 4.98155647317039 x000000 xFF0000 2 4.98155647317039 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.162685182282516 63.28625798131932 4.98155647317039 x000000 xFF0000 2 4.98155647317039 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.34272209125215 61.956612990690246 4.98155647317039 x000000 xFF0000 2 4.98155647317039 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.52275900022178 60.626968000061176 4.98155647317039 x000000 xFF0000 2 4.98155647317039 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.702795909191416 59.297323009432105 4.98155647317039 x000000 xFF0000 2 4.98155647317039 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.88283281816105 57.967678018803035 4.98155647317039 x000000 xFF0000 2 4.98155647317039 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.664828856824077 52.97243285236115 6.216617143403763 x000000 xFF0000 2 6.216617143403763 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.33223380420521 47.98350706307811 6.216617143403763 x000000 xFF0000 2 6.216617143403763 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.999638751586343 42.99458127379506 6.216617143403763 x000000 xFF0000 2 6.216617143403763 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.667043698967476 38.00565548451202 6.216617143403763 x000000 xFF0000 2 6.216617143403763 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.33444864634861 33.016729695228975 6.216617143403763 x000000 xFF0000 2 6.216617143403763 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.00185359372974 28.02780390594593 6.216617143403763 x000000 xFF0000 2 6.216617143403763 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.737622459586618 30.63861466787495 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.988948193025927 28.006841594793475 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.240273926465235 25.375068521712 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 38.491599659904544 22.743295448630523 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.74292539334385 20.111522375549047 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.99425112678316 17.47974930246757 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.24557686022247 14.847976229386095 1.0164888305933453 x000000 xFF0000 2 1.0164888305933453 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.24788851728147 15.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.24788851728147 15.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.24875215257315 17.99884814083675 2.316215803069055 x000000 xFF0000 2 2.316215803069055 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.92276937571059 21.390248654502077 2.316215803069055 x000000 xFF0000 2 2.316215803069055 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.59678659884803 24.781649168167405 2.316215803069055 x000000 xFF0000 2 2.316215803069055 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.27080382198547 28.173049681832733 2.316215803069055 x000000 xFF0000 2 2.316215803069055 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.94482104512291 31.56445019549806 2.316215803069055 x000000 xFF0000 2 2.316215803069055 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.61883826826035 34.95585070916339 2.316215803069055 x000000 xFF0000 2 2.316215803069055 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.29285549139779 38.347251222828724 2.316215803069055 x000000 xFF0000 2 2.316215803069055 7 0

bounds -4.262377540413382 107.29285549139779 -15.152023770613905 106.92568372296176 