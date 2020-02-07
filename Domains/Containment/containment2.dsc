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
	containment 54.07152330911474 93.62860932364589 5.092895357497055 x000000 xFF0000 2 5.092895357497055 1 0 47.16712520114097 61.28141683887137 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.10794812747531 90.84317925099013 5.092895357497055 x000000 xFF0000 2 5.092895357497055 6 0 39.9970381418927 71.15019503542501 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.14437294583588 88.05774917833438 5.092895357497055 x000000 xFF0000 2 5.092895357497055 11 0 45.270380859843996 68.6687483097664 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.180797764196456 85.27231910567862 5.092895357497055 x000000 xFF0000 2 5.092895357497055 16 0 43.741505828413295 69.93354373216681 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.21722258255701 82.48688903302286 5.092895357497055 x000000 xFF0000 2 5.092895357497055 21 0 41.94612138661613 70.77838752152076 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.253647400917565 79.7014589603671 5.092895357497055 x000000 xFF0000 2 5.092895357497055 26 0 38.01672416273574 71.02560424036861 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.29007221927812 76.91602888771135 5.092895357497055 x000000 xFF0000 2 5.092895357497055 31 0 31.646603478004828 64.24211470131448 10.0 76.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.561354415001214 70.66537241541253 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 4 0 33.09597106923096 67.9027993687804 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.668095064531563 63.467341862850525 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 9 0 36.129609859541034 70.41244363421781 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.774835714061913 56.26931131028849 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 14 0 34.454269564299224 69.34924035290405 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.88157636359227 49.07128075772645 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 19 0 32.14006126425381 66.16400588851721 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.98831701312263 41.87325020516441 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 24 0 31.646603478004828 62.25788529868552 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.095057662652987 34.67521965260237 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 29 0 46.4366816398744 59.43652699769888 22.0 35.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.22016474068881 36.91555391079498 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 5 0 34.454269564299224 57.15075964709595 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.46937642465213 38.83881415347913 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 10 0 32.14006126425381 60.33599411148279 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.71858810861545 40.76207439616327 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 15 0 33.09597106923096 58.59720063121959 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.96779979257877 42.685334638847415 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 20 0 36.129609859541034 56.08755636578219 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.21701147654208 44.60859488153156 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 25 0 38.01672416273574 55.4743957596314 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.46622316050541 46.5318551242157 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 30 0 39.9970381418927 55.349804964574986 71.0 48.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.5223106005661 49.37335702337246 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 1 0 43.741505828413295 56.56645626783319 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.05840591350656 56.45708299866864 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 6 0 41.94612138661613 55.721612478479244 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.59450122644702 63.540808973964815 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 11 0 46.4366816398744 67.06347300230112 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.13059653938748 70.62453494926099 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 16 0 47.41581508830583 63.25 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.66669185232794 77.70826092455717 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 21 0 47.16712520114097 65.21858316112863 55.0 94.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.202787165268404 84.79198689985334 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 26 0 45.270380859844 57.8312516902336 55.0 94.0

bounds -20.0 101.0 5.0 134.0 
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.581552037101673 79.38832306014615 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	60.39232315761056 68.41633266648753 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.75959001020589 40.22387630279462 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.461595476219465 73.33417219569583 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.450976490083 71.38714222062421 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.17975544260808 81.7688047693046 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.6140788965729 59.53085789121117 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.933639213089336 54.49533776747036 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.885987392817356 66.18905337356952 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	63.6671100587702 46.94002296734949 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	16.30645765022574 61.03238269198996 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	67.14670785575252 58.369416662412156 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	22.84999754038699 70.21645724993135 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	17.079421668850728 72.51502448971719 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.627834729533774 51.092439699118785 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	23.682812895097605 38.82574669783273 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.70945808050557 89.15027812913021 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	14.371390753944382 70.47255598264454 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	23.465262721178362 48.44505489646163 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.51047842231886 84.58839418256059 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.218229932843894 55.462153328571134 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.599324592516773 77.6740809404691 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.821563755215323 40.195887994997925 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	67.12409299051416 58.8335220017249 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.85886579348896 87.7253151353544 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	63.175485249700905 57.00833849608118 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.14386432491725 54.7968063015542 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	29.293253994151392 52.2689816740037 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.964763956955935 53.51407418959421 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.80985405260476 40.35581700925377 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.943302503400872 56.460079995769846 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.031230146125594 50.7725333124238 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	29.0371757567701 68.22142018998414 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	15.928973659603843 58.453957053903665 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	51.52915547987572 69.5915016379882 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	24.04789170257105 47.266149364967774 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.51430496304181 76.81021739188866 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.170895034599994 71.26798312979665 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.516368398458024 84.01675109242186 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.719337091958938 70.79125144411759 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.95049176753547 65.1357914411152 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.321013076609546 77.1074901239916 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.72777969586316 74.01461111496451 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.260951669750877 38.75569299228813 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.84260317428297 70.37472046271927 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	19.319454685658332 61.0473129853437 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	54.45816202354408 67.37957993436092 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.704581130302326 50.103594662594716 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.5578690627947 38.879116010019246 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.18825051175391 67.22267782240428 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.0976316614631 78.14025674094722 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.23208045859709 52.72961956825555 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.767970227297422 71.8529628438192 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.61106630688083 52.11320427798418 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.20468834361219 70.90113486279178 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.46647231174846 64.67259781028011 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	59.98929271345798 70.11795955301534 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.510843793618406 39.76929721700011 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	16.273133215371864 77.86733238101701 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.61082828813952 79.66889647640787 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.67472349619818 69.59053261335899 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.845200175985624 72.31143773613886 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	51.98020895563089 73.88579418797003 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	65.45042282631145 61.011082471314694 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.437645750005984 43.92268318225256 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.67690772891407 80.40865748020002 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.52016829313243 57.06194680588523 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.77461431116202 76.91643930780955 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	21.475766736794974 53.73611226620694 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	34.99698409873034 59.26634171066726 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.71078355295213 79.87380704966903 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.98758007828532 67.45337844653127 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.81166817855527 84.6514079444443 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.10079440508452 48.28253605660679 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	64.43167349212126 64.12677882222158 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.13043059992768 62.376534859417305 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.23180250975311 79.16417055922263 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.879249996496505 46.721002485793974 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.55872670502204 74.68379054702794 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.191661266101082 37.17735639555851 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.64681595938232 80.70757976068538 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.122403779788335 44.50428171432559 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.286157271408417 67.82611725133609 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.12056208077056 61.02663081016592 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.03682758208608 45.642603104158525 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.613427816354275 74.55673075227249 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.12240655495973 49.53842442500834 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.58186048585601 66.63940503301211 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	65.01523240019529 49.147266699179625 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	28.557223054550118 53.145615051069974 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	28.222683585145194 63.37405125723978 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	55.310309690563905 62.74457346500715 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	64.90976949699728 51.03071651597542 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.45878280087578 52.66224504887345 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.58925352542094 79.11800097165236 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.0144063733745 41.04507069802971 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	58.93283592733457 50.42619548804035 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.295015527928285 41.928067993426296 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.62355527363758 65.59509169265365 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	29.71390654618985 53.23680759947935 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
