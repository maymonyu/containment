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
	containment 39.36906109823746 39.608118250552785 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.32251805481954 89.72900722192783 5.092895357497055 x000000 xFF0000 2 5.092895357497055 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.81575017088342 47.68581126982619 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 33 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.1161584142113 67.79104455914252 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.71858810861545 40.76207439616327 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 15 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.561354415001214 70.66537241541253 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.11669615012741 45.37789897860522 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 27 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.710006227856496 86.20873209491258 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 27 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.982702544907283 69.22576630490013 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.095057662652987 34.67521965260237 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 29 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.69556810268031 83.3752417047941 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 25 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.202787165268404 84.79198689985334 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 26 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.268745771822786 40.37742234762644 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.6099376188849 83.04397504755401 5.092895357497055 x000000 xFF0000 2 5.092895357497055 20 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.62337747679939 69.20778975420176 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 15 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.089443194437633 62.02773575233812 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.13059653938748 70.62453494926099 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 16 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.774835714061913 56.26931131028849 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.932139454249773 59.1485235313133 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.724272623404413 46.19206853670163 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 21 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.36590783409075 47.30115922128936 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 32 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.569691751066806 38.06951005640547 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.41764212937143 43.069986687384244 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 21 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.67880827278685 93.07152330911474 5.092895357497055 x000000 xFF0000 2 5.092895357497055 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.500663163803196 91.40026526552128 5.092895357497055 x000000 xFF0000 2 5.092895357497055 5 0

object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.4 63.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.7 63.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.2 62.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.9 63.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.0 62.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.1 63.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.8 62.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.3 64.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.6 62.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.5 64.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.4 62.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.7 64.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.2 61.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.9 64.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.0 61.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.1 64.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.8 61.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.3 65.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.6 61.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.5 65.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.4 61.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.7 65.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.2 60.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.9 65.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.0 60.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.1 65.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.8 60.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.3 66.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.6 60.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.5 66.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.4 60.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.7 66.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.2 59.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.9 66.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.0 59.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.1 66.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.8 59.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.3 67.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.6 59.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.5 67.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.4 59.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.7 67.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.2 58.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.9 67.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.0 58.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.1 67.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.8 58.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.3 68.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.6 58.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.5 68.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.4 58.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.7 68.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.2 57.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.9 68.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.0 57.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.1 68.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.8 57.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.3 69.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.6 57.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.5 69.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.4 57.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.7 69.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.2 56.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.9 69.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.0 56.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.1 69.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.8 56.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.3 70.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.6 56.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.5 70.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.4 56.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.7 70.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.2 55.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.9 70.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.0 55.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.1 70.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.8 55.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.3 71.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.6 55.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.5 71.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.4 55.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.7 71.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.2 54.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.9 71.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.0 54.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.1 71.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.799999999999997 54.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.3 72.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.6 54.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.5 72.25 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.4 54.15 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.7 72.45 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.2 53.95 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.9 72.65 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.0 53.75 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.1 72.85 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	29.799999999999997 53.55 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.3 73.05 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	29.6 53.35 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0

bounds -20.0 101.0 5.0 134.0 