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
	containment 35.64705882352941 15.411764705882353 2.060753653048625 x000000 xFF0000 2 1.2436905730877506
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.94117647058824 18.235294117647058 2.060753653048625 x000000 xFF0000 2 1.2436905730877506
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.235294117647065 21.058823529411764 2.060753653048625 x000000 xFF0000 2 1.2436905730877506
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.52941176470589 23.88235294117647 2.060753653048625 x000000 xFF0000 2 1.2436905730877506
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.82352941176472 26.705882352941178 2.060753653048625 x000000 xFF0000 2 1.2436905730877506
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.35294117647059 28.588235294117645 2.060753653048625 x000000 xFF0000 2 1.2436905730877506
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.244630280781884 32.864024278724294 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.10925793320616 37.97963179318995 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.973885585630434 43.09523930765561 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.83851323805471 48.21084682212127 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.703140890478984 53.32645433658693 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.56776854290326 58.442061851052586 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.56768617378786 58.442196242767174 3.691445836266378 x000000 xFF0000 2 2.3262465619809167
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.35858670023344 59.57770053089494 5.20633034930427 x000000 xFF0000 2 2.384150397070847
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.075760100700386 56.73310159268483 5.20633034930427 x000000 xFF0000 2 2.384150397070847
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.792933501167333 53.88850265447473 5.20633034930427 x000000 xFF0000 2 2.384150397070847
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.51010690163428 51.04390371626462 5.20633034930427 x000000 xFF0000 2 2.384150397070847
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.641413299766526 48.42229946910505 5.20633034930427 x000000 xFF0000 2 2.384150397070847
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.24140883290356 44.26890056761217 0.4266274931268761 x000000 xFF0000 2 2.816478921215573
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.724226498710664 38.80670170283654 0.4266274931268761 x000000 xFF0000 2 2.816478921215573
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.207044164517768 33.34450283806091 0.4266274931268761 x000000 xFF0000 2 2.816478921215573
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.689861830324872 27.882303973285282 0.4266274931268761 x000000 xFF0000 2 2.816478921215573
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.172679496131977 22.420105108509652 0.4266274931268761 x000000 xFF0000 2 2.816478921215573
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.65549716193908 16.957906243734023 0.4266274931268761 x000000 xFF0000 2 2.816478921215573
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.758591167096448 16.731099432387815 0.4266274931268761 x000000 xFF0000 2 2.816478921215573

bounds -5.758591167096441 86.24463028078188 -9.588235294117647 84.57770053089493 