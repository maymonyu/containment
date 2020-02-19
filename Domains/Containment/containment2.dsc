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
	containmentStraight 49.101546907521666 91.64061876300866 0.0 x000000 xFF0000 2 0.0 0 0 36.5598996929683 72.29869831259538 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 43.203093815043324 89.28123752601732 0.0 x000000 xFF0000 2 0.0 0 0 44.257182227111294 71.48968131822042 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 37.30464072256498 86.92185628902598 0.0 x000000 xFF0000 2 0.0 0 0 45.86635245637313 70.32055071186157 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 31.406187630086645 84.56247505203464 0.0 x000000 xFF0000 2 0.0 0 0 42.4401003070317 72.29869831259538 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 25.507734537608307 82.20309381504332 0.0 x000000 xFF0000 2 0.0 0 0 40.49452189536827 72.71224377023798 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 19.60928144512997 79.84371257805198 0.0 x000000 xFF0000 2 0.0 0 0 38.50547810463173 72.71224377023798 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 13.710828352651628 77.48433134106065 0.0 x000000 xFF0000 2 0.0 0 0 34.742817772888706 71.48968131822042 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 10.661837898650523 73.73872051294404 0.0 x000000 xFF0000 2 0.0 0 0 29.985635545777413 63.25 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 12.446339476523418 67.64167345521166 0.0 x000000 xFF0000 2 0.0 0 0 31.802717465857008 68.84240311112777 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 14.230841054396311 61.54462639747927 0.0 x000000 xFF0000 2 0.0 0 0 33.13364754362688 70.32055071186157 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 16.015342632269206 55.44757933974688 0.0 x000000 xFF0000 2 0.0 0 0 30.808195570488735 67.11984065911021 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 17.7998442101421 49.35053228201449 0.0 x000000 xFF0000 2 0.0 0 0 30.193547236595172 65.2281476007338 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 19.584345788014996 43.2534852242821 0.0 x000000 xFF0000 2 0.0 0 0 30.193547236595172 61.271852399266194 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 21.36884736588789 37.15643816654971 0.0 x000000 xFF0000 2 0.0 0 0 48.191804429511265 59.38015934088978 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 25.968628336222263 36.05290139532428 0.0 x000000 xFF0000 2 0.0 0 0 36.5598996929683 54.20130168740462 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 32.10902805331655 37.68198703455337 0.0 x000000 xFF0000 2 0.0 0 0 31.802717465857004 57.65759688887224 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 38.24942777041083 39.31107267378247 0.0 x000000 xFF0000 2 0.0 0 0 30.808195570488728 59.38015934088979 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 44.389827487505116 40.940158313011565 0.0 x000000 xFF0000 2 0.0 0 0 33.13364754362687 56.179449288138436 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 50.5302272045994 42.56924395224066 0.0 x000000 xFF0000 2 0.0 0 0 34.7428177728887 55.01031868177958 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 56.67062692169368 44.19832959146976 0.0 x000000 xFF0000 2 0.0 0 0 38.50547810463172 53.787756229762024 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 62.811026638787965 45.827415230698854 0.0 x000000 xFF0000 2 0.0 0 0 40.494521895368266 53.787756229762024 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 68.95142635588225 47.45650086992794 0.0 x000000 xFF0000 2 0.0 0 0 45.86635245637312 56.17944928813843 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 69.60924609745604 51.99841746981391 0.0 x000000 xFF0000 2 0.0 0 0 44.25718222711129 55.010318681779566 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 67.5222109406766 57.99864354555478 0.0 x000000 xFF0000 2 0.0 0 0 42.4401003070317 54.20130168740462 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 65.43517578389717 63.99886962129565 0.0 x000000 xFF0000 2 0.0 0 0 48.191804429511265 67.11984065911021 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 63.34814062711773 69.99909569703652 0.0 x000000 xFF0000 2 0.0 0 0 49.01436445422259 63.25 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 61.26110547033829 75.99932177277739 0.0 x000000 xFF0000 2 0.0 0 0 48.80645276340483 65.2281476007338 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 59.174070313558865 81.99954784851826 0.0 x000000 xFF0000 2 0.0 0 0 47.19728253414299 68.84240311112777 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 57.08703515677943 87.99977392425913 0.0 x000000 xFF0000 2 0.0 0 0 47.19728253414299 57.657596888872234 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentStraight 55.0 94.0 0.0 x000000 xFF0000 2 0.0 0 0 48.80645276340483 61.27185239926619 10.0 76.0

bounds -20.0 101.0 5.0 134.0 
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	12.977047216987309 65.86147662498983 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.638335463171906 71.32362552027666 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	51.4797262676465 90.69030137929389 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.817369713732305 50.064981264099266 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	53.08657897900352 67.32125780806038 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.06289209017487 56.32401946146521 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.0409980967227 39.142888573019846 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.79003356116305 78.22627457111761 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.18252844703233 49.081211802493684 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.97735422658742 53.043030698772874 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	61.10429508624716 50.306173160722885 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.449542198373 74.51864433279789 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	12.371691426946583 69.16524267764765 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.44381998228255 50.618260624701946 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.608335739832185 54.600109287324784 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	20.759191205420077 61.364908542294735 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.61826708200478 52.947646850528216 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.74361076185939 48.007001542544884 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	17.901972216521717 68.3850082638042 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.430151300258185 48.97514150753008 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.97569779661782 51.002282882501376 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.320912457988833 60.590054576324725 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	23.42869887788904 61.004490987423 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.978855525993364 62.85553240303091 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	17.492881670615194 51.634354846284936 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.37591355119752 78.49280050019308 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.163831428927224 49.14738931035885 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	20.52002874243626 42.658262958070885 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.26004403053204 60.12309298744427 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.20041723773679 87.02372506409921 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.18815897290584 85.85703592305438 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	15.298164078374615 63.63357647669516 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.70919860940439 82.72238106078552 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.388517702437596 84.52306386889515 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.753447628651514 49.73224402897434 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.58336521564249 72.23577728546137 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.491951359676605 67.5779150956831 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.07418385027094 53.889781575816755 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.991816956492066 56.88420682132592 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	22.406525751754028 59.53916517676153 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	28.14412644676624 73.23832869564373 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	15.336118619555503 67.46432415354522 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.29872429780444 73.74493471406424 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.29059198460914 42.3281613208564 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	53.957230083248945 46.44931932040204 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.59520354081135 78.78934045619754 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.42725510526878 74.59249171676035 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	22.322264208455863 45.53974446718082 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.674214450004637 59.54873797414473 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.746346003549487 46.57297087219801 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.7599235773498 52.28715413271098 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.571745915866103 51.3376903363105 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.367486669077344 43.645379917542414 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.5971013559138 52.08136850467197 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.27014192641806 79.70234368831623 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.015469724317256 54.35951765566759 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.5592235263448 47.054040170104756 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.15944705926025 70.80472349014441 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	23.545556358325733 64.94908768955473 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.347941516345706 63.49946168271056 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	23.797947176121255 35.592208923285696 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.83833770835197 81.1731549559687 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.78274355017908 66.44210633333046 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.12375706328501 65.40378274601778 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.32018945798831 87.58541097234078 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.529754614705706 74.31567275560616 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.462985987812683 69.05293326153613 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.34377575521104 38.41138224506664 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.86577786240685 72.53167176102689 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.18563386844811 51.997469509585216 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.39673561221948 50.70919320218846 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.052397145379526 37.923597283573095 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	63.86549208786511 61.39202971161283 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.57415099891809 72.63883123467534 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.704025716713915 65.20700427390182 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.61769233597458 70.53406994976592 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.800871120844445 81.86746095515196 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.65140501258532 61.49422400179978 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.47189365752437 80.85444442569492 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.32455916489174 49.31915757242291 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	22.15223702730706 68.90295475998585 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.842840889718794 78.40989768481384 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.13243223926635 86.28887079912481 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.705826705876536 58.88035010373642 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.26140332046475 39.72615671653314 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.336874854884773 55.256847157031785 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	54.46060995539378 66.9290887482759 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	24.780630430621194 60.31350025969509 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.63091723477737 88.34747119794004 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.62751555668819 91.17074737419718 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.02835637025082 67.73167866818923 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.364305820462672 53.78070193332667 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	23.847843089655733 66.01985729547735 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	53.41246152962677 74.205283526851 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.957705634717655 61.93375359177432 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	54.48945028635797 86.95373130814227 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.674045027229305 72.42966223696203 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	28.2909165916227 52.54136583888295 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	51.64427916506769 75.91886798504567 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.455244696315134 60.17103926969479 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 6.0
