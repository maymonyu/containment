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
	containment 32.36473995898258 90.06803057991961 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.411849897456452 85.67007644979903 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.458959835930322 81.27212231967845 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.506069774404192 76.87416818955786 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.553179712878062 72.47621405943728 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.600289651351932 68.0782599293167 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.647399589825802 63.68030579919611 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.694509528299672 59.282351669075524 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.741619466773543 54.884397538954936 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.788729405247413 50.48644340883435 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.835839343721283 46.08848927871376 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.882949282195153 41.69053514859317 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.930059220669023 37.29258101847258 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.977169159142893 32.89462688835199 6.069816665027778 x000000 xFF0000 2 2.3779896742840796 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.378784544540864 33.83045913775775 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.799973903922165 34.66896056798524 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.22116326330347 35.507461998212726 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.64235262268477 36.345963428440214 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.06354198206607 37.1844648586677 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.48473134144737 38.02296628889519 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.90592070082867 38.86146771912268 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.327110060209975 39.69996914935017 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.74829941959128 40.538470579577655 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.16948877897258 41.376972009805144 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.59067813835388 42.21547344003263 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.01186749773518 43.05397487026012 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.43305685711648 43.89247630048761 1.7582254392385703 x000000 xFF0000 2 3.914021052133174 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 76.98372400735187 48.36998676838697 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.96441328138062 52.753022890063356 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.94510255540936 57.13605901173974 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.92579182943811 61.51909513341612 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.90648110346686 65.90213125509251 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.88717037749561 70.2851673767689 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.86785965152436 74.66820349844528 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.8485489255531 79.05123962012166 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.82923819958185 83.43427574179805 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.8099274736106 87.81731186347443 3.370089292881655 x000000 xFF0000 2 2.3356607267682508 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.30994713637774 87.80400906233524 4.542610706416351 x000000 xFF0000 2 2.555331946822445 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.87464698971804 88.56434623033405 4.542610706416351 x000000 xFF0000 2 2.555331946822445 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.43934684305834 89.32468339833287 4.542610706416351 x000000 xFF0000 2 2.555331946822445 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.00404669639864 90.08502056633168 4.542610706416351 x000000 xFF0000 2 2.555331946822445 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.56874654973894 90.84535773433049 4.542610706416351 x000000 xFF0000 2 2.555331946822445 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.13344640307924 91.6056949023293 4.542610706416351 x000000 xFF0000 2 2.555331946822445 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.69814625641954 92.36603207032812 4.542610706416351 x000000 xFF0000 2 2.555331946822445 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.26284610975984 93.12636923832693 4.542610706416351 x000000 xFF0000 2 2.555331946822445 8 0

bounds -5.022830840857107 102.43305685711648 7.894626888351993 118.12636923832693 