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
	containment 39.21589625495059 87.68635850198024 5.092895357497055 x000000 xFF0000 2 5.092895357497055 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.931129346098 83.9724517384392 5.092895357497055 x000000 xFF0000 2 5.092895357497055 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.646362437245408 80.25854497489817 5.092895357497055 x000000 xFF0000 2 5.092895357497055 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.361595528392815 76.54463821135714 5.092895357497055 x000000 xFF0000 2 5.092895357497055 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.739504920037017 66.6400248565402 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.548492452744151 57.042650786457486 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.357479985451285 47.44527671637478 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.16646751815842 37.84790264629207 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.157714739884053 37.429597788132504 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.82333031850183 39.99394477837804 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.488945897119606 42.55829176862357 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.15456147573738 45.1226387588691 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.82017705435516 47.68698574911463 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.70901060859899 57.46159450027791 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.42380435918626 66.9065624673395 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.13859810977354 76.35153043440108 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.853391860360816 85.79649840146267 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.56818561094809 95.24146636852426 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 5 0

bounds -18.638404471607185 99.82017705435516 7.429597788132504 135.24146636852424 