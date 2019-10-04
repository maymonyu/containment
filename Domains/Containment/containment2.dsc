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
	containment 100.10315272443799 22.77992042034362 4.44939424870377 x000000 xFF0000 2 1.8129509138092519
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 95.75788181109498 23.949801050859044 4.44939424870377 x000000 xFF0000 2 1.8129509138092519
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 91.41261089775196 25.11968168137447 4.44939424870377 x000000 xFF0000 2 1.8129509138092519
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 87.06733998440895 26.289562311889895 4.44939424870377 x000000 xFF0000 2 1.8129509138092519
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 82.72206907106593 27.45944294240532 4.44939424870377 x000000 xFF0000 2 1.8129509138092519
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 78.37679815772292 28.629323572920747 4.44939424870377 x000000 xFF0000 2 1.8129509138092519
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.89209092241673 29.0 4.71238898038469 x000000 xFF0000 2 3.0100952877493334
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.51829825769505 24.714828624855446 5.600868752304838 x000000 xFF0000 2 2.697352767629719
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.68063144476996 21.222315624332253 5.600868752304838 x000000 xFF0000 2 2.697352767629719
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.84296463184486 17.729802623809057 5.600868752304838 x000000 xFF0000 2 2.697352767629719
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.00529781891977 14.237289623285863 5.600868752304838 x000000 xFF0000 2 2.697352767629719
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.50529760041437 14.238691960093233 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 72.89554150285339 15.226496838142014 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 77.28578540529242 16.214301716190793 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 81.67602930773144 17.202106594239574 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 86.06627321017046 18.189911472288355 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 90.45651711260949 19.177716350337136 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 94.84676101504851 20.165521228385916 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 99.23700491748754 21.153326106434697 1.7921107691426879 x000000 xFF0000 2 3.696489760723763
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 103.62724881992656 22.14113098448348 1.7921107691426879 x000000 xFF0000 2 3.696489760723763

bounds 39.00529781891977 128.62724881992656 -10.762710376714137 54.0 