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
	containment 34.93334978814456 62.00074046650517 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.8333744703614 57.501851166262924 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.73339915257824 53.00296186602068 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.633423834795074 48.50407256577843 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.53344851701191 44.00518326553618 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.43347319922875 39.506293965293935 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.33349788144559 35.00740466505169 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.233522563662426 30.50851536480944 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.133547245879264 26.009626064567193 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.0335719280961 21.510736764324946 6.260966741852867 x000000 xFF0000 2 2.3961179865944415
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.093129916916894 18.66608502175986 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.446304922128 17.52596775849028 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.79947992733911 16.38585049522071 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.15265493255021 15.245733231951133 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.50582993776132 14.105615968681558 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.859004942972426 12.965498705411983 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.21217994818353 11.825381442142408 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.56535495339463 10.685264178872833 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.91852995860573 9.545146915603258 1.3146449442292931 x000000 xFF0000 2 3.78780584304108
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.33371729001524 13.890296730055885 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 78.51774561607974 18.23173392562568 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.70177394214423 22.573171121195475 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 80.88580226820872 26.91460831676527 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.06983059427321 31.256045512335067 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 83.2538589203377 35.59748270790486 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 84.4378872464022 39.938919903474655 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 85.62191557246669 44.28035709904445 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 86.80594389853118 48.62179429461425 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 87.98997222459568 52.96323149018404 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 89.17400055066017 57.30466868575384 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 90.35802887672466 61.646105881323635 2.875340604438868 x000000 xFF0000 2 2.0949927743340804
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 88.23257662056835 66.76742337943165 3.9269908169872414 x000000 xFF0000 2 2.615767547315606
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.46411215602011 67.73831416284732 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.97158241847987 67.47912975491231 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.47905268093963 67.2199453469773 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.9865229433994 66.96076093904229 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.49399320585916 66.70157653110728 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.00146346831892 66.44239212317227 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.50893373077868 66.18320771523726 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.01640399323844 65.92402330730225 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.5238742556982 65.66483889936724 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.031344518157965 65.40565449143223 4.770017407862164 x000000 xFF0000 2 2.720079358152332
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.53881478061773 65.14647008349722 4.770017407862164 x000000 xFF0000 2 2.720079358152332

bounds 9.033571928096102 115.35802887672466 -15.454853084396742 92.73831416284732 