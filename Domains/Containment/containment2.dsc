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
	containment 28.341640786499873 11.683281572999748 2.677945044588987 x000000 xFF0000 2 1.9786422884530082
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.354101966249683 15.70820393249937 2.677945044588987 x000000 xFF0000 2 1.9786422884530082
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.65835921350013 20.316718427000254 2.677945044588987 x000000 xFF0000 2 1.9786422884530082
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.437996400348695 24.238957773791757 4.377652143067875 x000000 xFF0000 2 2.291739104350349
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.18776081517098 25.717300586027484 4.377652143067875 x000000 xFF0000 2 2.291739104350349
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.937525229993263 27.19564339826321 4.377652143067875 x000000 xFF0000 2 2.291739104350349
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.833490390118477 30.01443812517618 4.377652143067875 x000000 xFF0000 2 2.291739104350349
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.141951112046673 27.567804448186692 6.038206644052722 x000000 xFF0000 2 2.3113154030973697
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.050540799383173 23.2021631975327 6.038206644052722 x000000 xFF0000 2 2.3113154030973697
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 7.727606875108999 17.910427500435997 6.038206644052722 x000000 xFF0000 2 2.3113154030973697
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.87347885566343 14.13795634330097 1.2793395323170293 x000000 xFF0000 2 3.6587730881848755
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.183697139158612 12.844890858252416 1.2793395323170293 x000000 xFF0000 2 3.6587730881848755
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.493915422653792 11.551825373203862 1.2793395323170293 x000000 xFF0000 2 3.6587730881848755
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.126521144336547 9.862043656699036 1.2793395323170293 x000000 xFF0000 2 3.6587730881848755

bounds -17.272393124891 57.65835921350013 -15.137956343300964 55.014438125176184 