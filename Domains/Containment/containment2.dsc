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
	containmentZigZag 95.70877420276248 56.29122579723751 0.0 x000000 xFF0000 2 0.0 0 0 83.11436445422258 52.8 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 92.41754840552497 59.58245159447502 0.0 x000000 xFF0000 2 0.0 0 0 82.90645276340481 54.7781476007338 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 89.12632260828747 62.873677391712526 0.0 x000000 xFF0000 2 0.0 0 0 82.29180442951126 56.66984065911021 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 85.83509681104997 66.16490318895003 0.0 x000000 xFF0000 2 0.0 0 0 81.297282534143 58.39240311112776 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 82.54387101381245 69.45612898618755 0.0 x000000 xFF0000 2 0.0 0 0 79.96635245637312 59.87055071186156 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 79.25264521657493 72.74735478342507 0.0 x000000 xFF0000 2 0.0 0 0 78.3571822271113 61.039681318220424 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 75.96141941933742 76.03858058066258 0.0 x000000 xFF0000 2 0.0 0 0 76.5401003070317 61.848698312595374 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 72.6701936220999 79.3298063779001 0.0 x000000 xFF0000 2 0.0 0 0 74.59452189536827 62.26224377023797 72.0 80.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 69.31264514361067 77.44701288643013 0.0 x000000 xFF0000 2 0.0 0 0 72.60547810463173 62.26224377023797 52.0 61.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 65.93813806446131 74.24123116123825 0.0 x000000 xFF0000 2 0.0 0 0 70.6598996929683 61.848698312595374 52.0 61.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 62.56363098531196 71.03544943604636 0.0 x000000 xFF0000 2 0.0 0 0 68.84281777288871 61.039681318220424 52.0 61.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 59.18912390616261 67.82966771085448 0.0 x000000 xFF0000 2 0.0 0 0 67.23364754362687 59.87055071186157 52.0 61.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 55.81461682701325 64.6238859856626 0.0 x000000 xFF0000 2 0.0 0 0 65.902717465857 58.39240311112776 52.0 61.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 52.4401097478639 61.418104260470706 0.0 x000000 xFF0000 2 0.0 0 0 64.90819557048873 56.669840659110214 52.0 61.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 53.37094935209287 57.19180735529758 0.0 x000000 xFF0000 2 0.0 0 0 64.29354723659517 54.77814760073381 61.0 36.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 54.94751781624357 52.81245051043452 0.0 x000000 xFF0000 2 0.0 0 0 64.08563554577741 52.8 61.0 36.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 56.524086280394265 48.43309366557147 0.0 x000000 xFF0000 2 0.0 0 0 64.29354723659517 50.82185239926619 61.0 36.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 58.10065474454497 44.053736820708416 0.0 x000000 xFF0000 2 0.0 0 0 64.90819557048873 48.93015934088979 61.0 36.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 59.677223208695665 39.67437997584536 0.0 x000000 xFF0000 2 0.0 0 0 65.902717465857 47.20759688887224 61.0 36.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 61.746451235073515 35.93509119695013 0.0 x000000 xFF0000 2 0.0 0 0 67.23364754362686 45.72944928813843 84.0 34.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 66.38344922655463 35.5318739802996 0.0 x000000 xFF0000 2 0.0 0 0 68.8428177728887 44.56031868177958 84.0 34.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 71.02044721803576 35.12865676364907 0.0 x000000 xFF0000 2 0.0 0 0 70.6598996929683 43.75130168740462 84.0 34.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 75.65744520951688 34.72543954699854 0.0 x000000 xFF0000 2 0.0 0 0 72.60547810463171 43.33775622976202 84.0 34.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 80.294443200998 34.322222330348005 0.0 x000000 xFF0000 2 0.0 0 0 74.59452189536826 43.33775622976202 84.0 34.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 84.57934019342882 34.7338309116765 0.0 x000000 xFF0000 2 0.0 0 0 76.5401003070317 43.75130168740462 99.0 53.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 87.46347215474306 38.387064729341205 0.0 x000000 xFF0000 2 0.0 0 0 78.35718222711128 44.56031868177956 99.0 53.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 90.3476041160573 42.04029854700591 0.0 x000000 xFF0000 2 0.0 0 0 79.96635245637312 45.729449288138426 99.0 53.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 93.23173607737154 45.69353236467062 0.0 x000000 xFF0000 2 0.0 0 0 81.297282534143 47.20759688887223 99.0 53.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 96.11586803868578 49.34676618233532 0.0 x000000 xFF0000 2 0.0 0 0 82.29180442951126 48.93015934088978 99.0 53.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentZigZag 98.99999999999997 53.00000000000002 0.0 x000000 xFF0000 2 0.0 0 0 82.90645276340481 50.821852399266184 72.0 80.0

bounds 22.0 129.0 4.0 120.0 
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	61.042408988476126 62.26294807407634 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	80.65063901706355 64.70444543938868 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	79.53612981308358 63.973679513191634 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.57085441998072 67.26948957286517 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.61646494695115 70.73235494274516 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.04502440102948 64.92881262843274 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	61.03024492437219 50.609511798890004 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.310645418843 66.18228168560574 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.14155858811085 42.53609913507654 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	87.97577510138447 45.98612515130914 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	77.93436935847558 68.22447217350174 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	74.30676211054293 55.32227007313977 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	70.11694726632372 73.98881267787604 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	67.22904708835306 38.324471760583826 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.892557200497464 65.17446343105506 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	76.54716498228146 43.10857740305714 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	65.38672916034889 43.641589963341026 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.90914273669713 56.94166285938993 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.51841507074697 59.614602720047124 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	60.62515735533313 42.6417820812336 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.96852659193023 51.65057379836273 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	65.92386308326749 50.212682306356655 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.56129709657816 51.149504036217294 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.79799629463493 42.253051324195724 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.22038402832808 48.39109854920779 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.65421143694736 73.57590197566418 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	54.622007743743595 58.85722962592712 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	84.92985100632228 51.53131974326007 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	76.87973018459711 71.09282173918442 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	77.96435326847613 41.9713563294228 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	65.11643925529641 58.9053798152002 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	79.69148211078308 41.7884883076634 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	75.47068075493661 39.18126042336764 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	71.71117770837701 41.99253322495642 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	85.33407592713007 56.63950920710207 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	91.87975108670028 45.74800345903854 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	78.34902767546983 68.98517564652391 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	61.148442410691636 50.71755736138718 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	67.77537507444137 75.8236175317702 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	75.1758491749795 58.12656215623973 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	62.18835291349974 52.05446275857936 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	83.28036888463694 41.136054989208446 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	85.64819412472323 36.49481163286108 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	67.90806809599849 56.87795227082635 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	79.72910020449243 69.05693238958023 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	91.40306148648678 59.90302681966523 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	73.13736288909743 38.58743697508764 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	92.48646584776174 54.10753784076619 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	71.43806990081629 49.454962008418846 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	70.8045784986158 49.759284542455376 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	77.37493304968807 35.61213709601323 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	84.01183535353132 39.247007328436396 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	77.8194393704368 48.47751039269704 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	73.0759779409839 67.67274990185966 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	82.72788401897631 56.992424960660514 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	64.81253278424327 66.90376532251176 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	81.99272533440487 59.03792038168507 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	81.68726952125066 44.75108349885674 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.64499221631857 64.29208733446065 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	71.26253331152806 67.16234552808196 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	83.28878809544601 54.09250067064468 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	60.46388175336385 38.74421700811177 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	65.26812711334838 51.72199577508723 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	74.48214621403906 50.033224893151974 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	98.04848437186683 52.357037701918614 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	79.95501365236737 55.630441839168334 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	83.72316060176728 53.10736429223411 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	84.61849363422411 47.3461833371088 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	77.57203507686822 54.80393107415078 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	80.39938427915992 36.04366044015029 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	61.04289749875494 40.47638462344497 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	75.496465552498 46.14300745458724 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	85.04700713111106 43.02642618130517 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	71.32824540595195 61.5878727527651 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	83.07427409151727 61.056665128420434 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	62.57320798666401 35.97470796981124 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.1421996489405 66.70602342796377 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.11799727245275 75.63686770680502 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	71.48084915549168 59.84521978474253 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.87808680468973 48.29370036698428 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	63.7824200968604 39.52413117982459 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	87.5957996062946 49.531961245489455 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	67.88517515544784 54.49455642576481 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.80518110400595 58.18038842719642 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	77.95336916274644 37.92704366352905 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	64.26741350823283 36.15561012397195 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.32854016870517 54.224622730439975 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	79.86082823956343 47.519128758396654 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	74.01995860505079 58.130637640341725 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	84.51316915143059 41.100163516520674 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.12066260954927 46.97152993327174 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	62.983228023745234 42.466562178737476 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	84.94802667571506 66.30563148285961 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.2759222547945 47.17106053493555 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	63.9620240935078 48.96875555684809 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.081149851026325 60.74319516996019 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	70.80749843594623 51.596873502340706 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	64.76961102722474 65.56981579898574 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	71.98513500645439 67.97268423233459 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.61307801700747 67.29139610132336 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
