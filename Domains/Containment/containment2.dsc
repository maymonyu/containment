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
	containment 52.21456992734422 92.88582797093768 5.092895357497055 x000000 xFF0000 2 5.092895357497055 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.57218647291793 91.02887458916716 5.092895357497055 x000000 xFF0000 2 5.092895357497055 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.92980301849163 89.17192120739664 5.092895357497055 x000000 xFF0000 2 5.092895357497055 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 38.28741956406534 87.31496782562611 5.092895357497055 x000000 xFF0000 2 5.092895357497055 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.645036109639044 85.45801444385559 5.092895357497055 x000000 xFF0000 2 5.092895357497055 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.00265265521275 83.60106106208507 5.092895357497055 x000000 xFF0000 2 5.092895357497055 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.360269200786455 81.74410768031454 5.092895357497055 x000000 xFF0000 2 5.092895357497055 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.71788574636016 79.88715429854402 5.092895357497055 x000000 xFF0000 2 5.092895357497055 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.075502291933864 78.0302009167735 5.092895357497055 x000000 xFF0000 2 5.092895357497055 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.433118837507568 76.17324753500297 5.092895357497055 x000000 xFF0000 2 5.092895357497055 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.385893226027587 71.26486481107241 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.790386992381155 66.46617777603106 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.194880758734723 61.667490740989706 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.59937452508829 56.86880370594835 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.003868291441858 52.070116670907 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.408362057795426 47.271429635865644 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.812855824148993 42.47274260082429 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.21734959050256 37.674055565782936 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.945095004758983 36.046657858405446 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.77790279406787 37.328831353528216 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.61071058337676 38.611004848650985 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.443518372685645 39.893178343773755 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.27632616199453 41.175351838896525 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.10913395130342 42.457525334019294 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.94194174061231 43.739698829142064 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.774749529921195 45.021872324264834 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.60755731923008 46.3040458193876 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.44036510853897 47.58621931451037 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.40483718622902 52.58609308959158 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.76223406152265 57.30857707312237 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.11963093681628 62.031061056653165 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.47702781210991 66.75354504018397 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.83442468740355 71.47602902371476 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.191821562697186 76.19851300724555 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.549218437990824 80.92099699077635 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.90661531328446 85.64348097430714 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.2640121885781 90.36596495783793 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 54.62140906387174 95.08844894136872 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 10 0

object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.5 63.25 0 1 xFFA000 x000000 0 3.4763294909066076 5 0

bounds -19.566881162492432 99.44036510853897 6.046657858405446 135.0884489413687 