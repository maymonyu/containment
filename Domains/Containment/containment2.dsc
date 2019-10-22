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
	containment 68.16565749677271 90.6261449958235 5.625296701997376 x000000 xFF0000 2 5.625296701997376 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.10841999139389 86.66971998886265 5.625296701997376 x000000 xFF0000 2 5.625296701997376 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.05118248601506 82.71329498190181 5.625296701997376 x000000 xFF0000 2 5.625296701997376 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.99394498063623 78.75686997494097 5.625296701997376 x000000 xFF0000 2 5.625296701997376 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.9367074752574 74.80044496798013 5.625296701997376 x000000 xFF0000 2 5.625296701997376 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.87946996987857 70.84401996101928 5.625296701997376 x000000 xFF0000 2 5.625296701997376 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.05947257938273 68.10037672901234 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.1281399354164 65.19418576041686 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.19680729145007 62.287994791821376 0.9505468408120751 x000000 xFF0000 2 0.9505468408120751 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.7255897966866 64.40698724585826 2.4668517113662407 x000000 xFF0000 2 2.4668517113662407 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.84906503445873 68.31133129307341 2.4668517113662407 x000000 xFF0000 2 2.4668517113662407 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.97254027223086 72.21567534028856 2.4668517113662407 x000000 xFF0000 2 2.4668517113662407 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.09601551000299 76.1200193875037 2.4668517113662407 x000000 xFF0000 2 2.4668517113662407 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.21949074777511 80.02436343471885 2.4668517113662407 x000000 xFF0000 2 2.4668517113662407 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 79.50678282503938 84.22450816150211 3.9669695041105313 x000000 xFF0000 2 3.9669695041105313 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.83276560190194 87.61590867516745 3.9669695041105313 x000000 xFF0000 2 3.9669695041105313 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.1587483787645 91.00730918883278 3.9669695041105313 x000000 xFF0000 2 3.9669695041105313 3 0

bounds 22.87946996987857 112.21949074777511 32.287994791821376 131.00730918883278 