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
	containmentSpiral 29.809421668722752 92.49507466995641 0.0 x000000 xFF0000 2 0.0 0 0 62.87287140284136 71.5 17.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 27.618843337445504 88.99014933991282 0.0 x000000 xFF0000 2 0.0 0 0 62.716436937801134 73.48768834059514 17.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 25.428265006168257 85.48522400986923 0.0 x000000 xFF0000 2 0.0 0 0 62.25098547838595 75.42643319748542 17.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 23.23768667489101 81.98029867982562 0.0 x000000 xFF0000 2 0.0 0 0 61.48797798427146 77.26849623796895 17.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 21.04710834361376 78.47537334978202 0.0 x000000 xFF0000 2 0.0 0 0 60.44620223223944 78.96851975653226 17.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 18.856530012336513 74.97044801973843 0.0 x000000 xFF0000 2 0.0 0 0 59.15131019876042 80.48464353209376 17.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 17.40184688498196 71.51443501398013 0.0 x000000 xFF0000 2 0.0 0 0 57.635186423198924 81.77953556557277 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 20.037025776239677 68.33026052037707 0.0 x000000 xFF0000 2 0.0 0 0 55.93516290463561 82.8213113176048 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 22.672204667497393 65.146086026774 0.0 x000000 xFF0000 2 0.0 0 0 54.093099864152094 83.58431881171929 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 25.307383558755106 61.96191153317093 0.0 x000000 xFF0000 2 0.0 0 0 52.1543550072618 84.04977027113446 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 27.942562450012822 58.77773703956785 0.0 x000000 xFF0000 2 0.0 0 0 50.166666666666664 84.2062047361747 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 30.577741341270535 55.59356254596478 0.0 x000000 xFF0000 2 0.0 0 0 48.17897832607153 84.04977027113446 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 33.21292023252825 52.409388052361706 0.0 x000000 xFF0000 2 0.0 0 0 46.24023346918124 83.58431881171929 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 35.848099123785964 49.22521355875863 0.0 x000000 xFF0000 2 0.0 0 0 44.39817042869772 82.8213113176048 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 38.48327801504368 46.04103906515556 0.0 x000000 xFF0000 2 0.0 0 0 42.698146910134405 81.77953556557277 41.0 43.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 41.16267797348155 43.089753364679474 0.0 x000000 xFF0000 2 0.0 0 0 41.18202313457291 80.48464353209376 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 44.78159370559133 45.086396527222796 0.0 x000000 xFF0000 2 0.0 0 0 39.88713110109389 78.96851975653226 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 48.4005094377011 47.08303968976612 0.0 x000000 xFF0000 2 0.0 0 0 38.845355349061876 77.26849623796895 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 52.01942516981088 49.07968285230944 0.0 x000000 xFF0000 2 0.0 0 0 38.08234785494738 75.42643319748542 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 55.63834090192066 51.07632601485277 0.0 x000000 xFF0000 2 0.0 0 0 37.6168963955322 73.48768834059514 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 59.25725663403043 53.0729691773961 0.0 x000000 xFF0000 2 0.0 0 0 37.46046193049197 71.5 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 62.87617236614021 55.06961233993942 0.0 x000000 xFF0000 2 0.0 0 0 37.616896395532194 69.51231165940487 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 66.49508809824998 57.06625550248275 0.0 x000000 xFF0000 2 0.0 0 0 38.08234785494737 67.57356680251458 70.0 59.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 70.02927763638124 59.12686975765203 0.0 x000000 xFF0000 2 0.0 0 0 38.84535534906187 65.73150376203105 73.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 70.95866131204112 63.15419901884481 0.0 x000000 xFF0000 2 0.0 0 0 39.887131101093885 64.03148024346774 73.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 71.88804498770098 67.18152828003758 0.0 x000000 xFF0000 2 0.0 0 0 41.18202313457291 62.515356467906244 73.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 72.81742866336086 71.20885754123036 0.0 x000000 xFF0000 2 0.0 0 0 42.698146910134405 61.22046443442723 73.0 72.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 71.94973176331514 75.15080471005459 0.0 x000000 xFF0000 2 0.0 0 0 44.39817042869772 60.178688682395205 68.0 87.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 70.64270708892515 79.07187873322457 0.0 x000000 xFF0000 2 0.0 0 0 46.240233469181234 59.415681188280715 68.0 87.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 69.33568241453516 82.99295275639454 0.0 x000000 xFF0000 2 0.0 0 0 48.17897832607152 58.95022972886554 68.0 87.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 68.02865774014516 86.91402677956452 0.0 x000000 xFF0000 2 0.0 0 0 50.166666666666664 58.7937952638253 68.0 87.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 64.07814927413627 87.98046268146594 0.0 x000000 xFF0000 2 0.0 0 0 52.1543550072618 58.95022972886554 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 60.068380614869234 88.9829048462827 0.0 x000000 xFF0000 2 0.0 0 0 54.09309986415209 59.415681188280715 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 56.0586119556022 89.98534701109945 0.0 x000000 xFF0000 2 0.0 0 0 55.93516290463561 60.178688682395205 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 52.04884329633517 90.9877891759162 0.0 x000000 xFF0000 2 0.0 0 0 57.635186423198924 61.22046443442723 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 48.03907463706814 91.99023134073296 0.0 x000000 xFF0000 2 0.0 0 0 59.15131019876041 62.515356467906244 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 44.02930597780111 92.99267350554972 0.0 x000000 xFF0000 2 0.0 0 0 60.446202232239436 64.03148024346774 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 40.01953731853408 93.99511567036647 0.0 x000000 xFF0000 2 0.0 0 0 61.48797798427145 65.73150376203105 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 36.009768659267046 94.99755783518323 0.0 x000000 xFF0000 2 0.0 0 0 62.25098547838595 67.57356680251458 32.0 96.0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containmentSpiral 32.000000000000014 96.0 0.0 x000000 xFF0000 2 0.0 0 0 62.71643693780113 69.51231165940486 32.0 96.0

bounds -13.0 103.0 13.0 136.0 
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	54.765821685145966 57.03018805778895 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	20.991333482957625 71.84975394340888 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.38502113816641 73.80764931985868 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.02994781691547 60.55405382694274 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.853889383789095 82.99096143450909 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	60.72430423623213 72.34197965570068 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	24.629827159214532 67.42268250075534 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	58.93278893896054 59.191646692390435 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.891235838017 47.242230144811245 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.62876163731615 89.20365234273959 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.87687844105387 51.30694871144671 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.15121334952286 82.90494937669567 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	30.98800793283344 60.6550621619973 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.50650937387914 87.55676251354151 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.693310480364744 77.21728884683475 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.43190996542767 64.24184222309546 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	53.78429631768704 87.72637805650749 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	58.84437588379215 75.87068562646476 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.43612268958306 80.22646044039868 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.06022990705031 61.37100214480286 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	60.30651317107184 84.49160757160044 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.75707319726172 72.7456327685241 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.82568525083171 81.6034309990533 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.68897913546245 59.751636786548644 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.65644575788106 72.01914660557536 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	69.76383801525446 60.31281819556675 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.8282125669412 87.44052461018698 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.26149263531329 48.094905660528156 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.97949748474544 66.330127483083 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.9633393737196 62.00991909812966 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	46.80722027947539 78.08276018215898 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	62.42166267959378 67.22699443610482 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.462654055689285 74.85573522830113 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	64.90591483876074 56.86171203847301 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.37440182846028 73.33430538403067 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	22.761946234154003 75.8522796132863 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.44007434938953 76.05036494096132 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	51.35729457624204 74.90538184260919 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.60626687807143 71.88768562127291 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	52.68635216676052 90.71764311780419 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.76549902923696 77.55039166091906 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.952755783640036 78.17070652597228 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	69.94853020657018 69.54933955267158 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.96879184644549 79.42036709898187 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.09024854292716 67.82299606702188 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	68.23637210991711 78.71632371675852 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.60010920788289 71.39516113823211 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	24.61798686117637 63.95242671615249 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	25.422763442513293 71.17547480931758 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.615513809766085 71.6316890324214 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.79750485635489 83.53115714956839 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	49.69858787896301 59.68361776631963 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.107199731795006 70.26981329765003 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.03395477370263 74.20895375348974 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	44.301779601862805 51.76581368273179 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	57.09267317881623 53.19468597471345 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	54.157003551258335 56.83992967675835 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	62.1435215971141 70.49981718803937 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.43900007262731 56.09218599625855 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.361309326810726 64.80376857491756 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.29072321126878 77.73585081126113 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.02784556334366 49.21099123284745 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	51.58117151493033 83.49184995793931 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	53.19875649030242 78.4931443045898 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	48.94006466665815 58.85770331526967 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.29967029795173 62.14245104904181 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	40.42798391963292 81.3835419467789 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	72.46785102190144 70.87870296250607 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	53.29892085221409 55.53958631067103 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.10964036552211 74.58352036853468 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	32.09121861989099 59.41405745404837 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	42.59530663240573 68.42966996660994 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.16014883258018 59.378655723707496 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	33.45238833721717 69.64882652888912 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	24.957624483515843 70.39141059829744 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.85131754190794 73.07057888855331 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.292354324576486 48.59552744848678 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	60.09856680591378 60.18440681201467 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	39.36088755745629 65.75564126384714 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	45.77046022611303 52.04253777955254 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	31.842059735832155 88.41162048238039 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	70.56673729559665 66.94683518708626 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.47643655882549 76.95075779651286 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.52640073017605 66.26463479612741 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	27.74841704908444 64.77512478544526 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	36.17850298433727 92.1234080351414 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	38.67573645001245 53.73531489895646 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	22.90961828322374 73.11525646859776 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	61.447732995154496 75.85298028695648 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	43.552150563076076 84.0725660835515 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	26.092459154340606 73.82078463333153 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	37.48544999883044 80.13770678339694 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	50.92359282941789 78.27384260280587 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	58.9734392223809 65.09935676957873 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	47.18837727390541 67.58460860792874 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	35.21065528649801 81.55843196077997 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	56.77974331966786 69.16579137086218 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	28.947089617598877 63.93661092981995 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	41.81102698891039 75.62450941872001 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
object EDU.gatech.cc.is.simulation.SquiggleBallSim
	66.35357151007443 57.53187272443574 0 0.5 xFFA000 x000000 0 3.4763294909066076 5 0 43.741505828413295 69.93354373216681 71.0 48.0 1.0
