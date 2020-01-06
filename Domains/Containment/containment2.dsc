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
	containment 54.07152330911474 93.62860932364589 5.092895357497055 x000000 xFF0000 2 5.092895357497055 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.67880827278685 93.07152330911474 5.092895357497055 x000000 xFF0000 2 5.092895357497055 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 51.28609323645897 92.51443729458359 5.092895357497055 x000000 xFF0000 2 5.092895357497055 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 49.89337820013108 91.95735128005244 5.092895357497055 x000000 xFF0000 2 5.092895357497055 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.500663163803196 91.40026526552128 5.092895357497055 x000000 xFF0000 2 5.092895357497055 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.10794812747531 90.84317925099013 5.092895357497055 x000000 xFF0000 2 5.092895357497055 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.715233091147425 90.28609323645898 5.092895357497055 x000000 xFF0000 2 5.092895357497055 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.32251805481954 89.72900722192783 5.092895357497055 x000000 xFF0000 2 5.092895357497055 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.929803018491654 89.17192120739668 5.092895357497055 x000000 xFF0000 2 5.092895357497055 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.53708798216377 88.61483519286553 5.092895357497055 x000000 xFF0000 2 5.092895357497055 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.14437294583588 88.05774917833438 5.092895357497055 x000000 xFF0000 2 5.092895357497055 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 38.751657909508 87.50066316380322 5.092895357497055 x000000 xFF0000 2 5.092895357497055 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.35894287318011 86.94357714927207 5.092895357497055 x000000 xFF0000 2 5.092895357497055 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.96622783685223 86.38649113474092 5.092895357497055 x000000 xFF0000 2 5.092895357497055 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.57351280052434 85.82940512020977 5.092895357497055 x000000 xFF0000 2 5.092895357497055 15 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.180797764196456 85.27231910567862 5.092895357497055 x000000 xFF0000 2 5.092895357497055 16 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.788082727868566 84.71523309114747 5.092895357497055 x000000 xFF0000 2 5.092895357497055 17 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.395367691540677 84.15814707661632 5.092895357497055 x000000 xFF0000 2 5.092895357497055 18 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.00265265521279 83.60106106208517 5.092895357497055 x000000 xFF0000 2 5.092895357497055 19 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.6099376188849 83.04397504755401 5.092895357497055 x000000 xFF0000 2 5.092895357497055 20 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.21722258255701 82.48688903302286 5.092895357497055 x000000 xFF0000 2 5.092895357497055 21 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.82450754622912 81.92980301849171 5.092895357497055 x000000 xFF0000 2 5.092895357497055 22 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.431792509901232 81.37271700396056 5.092895357497055 x000000 xFF0000 2 5.092895357497055 23 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.039077473573343 80.81563098942941 5.092895357497055 x000000 xFF0000 2 5.092895357497055 24 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.646362437245454 80.25854497489826 5.092895357497055 x000000 xFF0000 2 5.092895357497055 25 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.253647400917565 79.7014589603671 5.092895357497055 x000000 xFF0000 2 5.092895357497055 26 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.860932364589676 79.14437294583595 5.092895357497055 x000000 xFF0000 2 5.092895357497055 27 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.468217328261787 78.5872869313048 5.092895357497055 x000000 xFF0000 2 5.092895357497055 28 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.075502291933898 78.03020091677365 5.092895357497055 x000000 xFF0000 2 5.092895357497055 29 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.682787255606009 77.4731149022425 5.092895357497055 x000000 xFF0000 2 5.092895357497055 30 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.29007221927812 76.91602888771135 5.092895357497055 x000000 xFF0000 2 5.092895357497055 31 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.89735718295023 76.3589428731802 5.092895357497055 x000000 xFF0000 2 5.092895357497055 32 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.297310025283004 74.98419074694974 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.718658155189074 73.54458463643734 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.140006285095144 72.10497852592493 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.561354415001214 70.66537241541253 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.982702544907283 69.22576630490013 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.404050674813353 67.78616019438773 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.825398804719423 66.34655408387533 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.246746934625493 64.90694797336293 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.668095064531563 63.467341862850525 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.089443194437633 62.02773575233812 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.510791324343703 60.58812964182571 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.932139454249773 59.1485235313133 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.353487584155843 57.708917420800894 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.774835714061913 56.26931131028849 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.196183843967983 54.82970519977608 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 15 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.617531973874055 53.39009908926367 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 16 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.038880103780127 51.950492978751264 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 17 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.4602282336862 50.510886868238856 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 18 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.88157636359227 49.07128075772645 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 19 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.30292449349834 47.63167464721404 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 20 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.724272623404413 46.19206853670163 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 21 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.145620753310485 44.752462426189226 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 22 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.566968883216557 43.31285631567682 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 23 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.98831701312263 41.87325020516441 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 24 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.4096651430287 40.433644094652 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 25 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.831013272934772 38.994037984139595 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 26 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.252361402840844 37.55443187362719 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 27 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.673709532746916 36.11482576311478 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 28 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.095057662652987 34.67521965260237 0.28473043852271207 x000000 xFF0000 2 0.28473043852271207 29 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.42079539351814 35.37694571664767 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.870637730310808 35.7615977651845 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.320480067103475 36.146249813721326 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.77032240389614 36.530901862258155 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.22016474068881 36.91555391079498 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.670007077481475 37.30020595933181 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.11984941427414 37.68485800786864 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.569691751066806 38.06951005640547 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.01953408785947 38.4541621049423 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 36.46937642465213 38.83881415347913 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.919218761444796 39.223466202015956 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.36906109823746 39.608118250552785 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.81890343503012 39.992770299089614 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 42.268745771822786 40.37742234762644 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.71858810861545 40.76207439616327 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 15 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.16843044540811 41.1467264447001 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 16 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.618272782200776 41.53137849323693 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 17 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.06811511899344 41.91603054177376 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 18 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 49.5179574557861 42.300682590310586 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 19 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 50.96779979257877 42.685334638847415 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 20 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 52.41764212937143 43.069986687384244 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 21 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.86748446616409 43.45463873592107 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 22 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.31732680295676 43.8392907844579 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 23 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.76716913974942 44.22394283299473 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 24 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.21701147654208 44.60859488153156 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 25 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.66685381333475 44.99324693006839 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 26 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.11669615012741 45.37789897860522 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 27 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.566538486920074 45.762551027142045 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 28 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.01638082371274 46.147203075678874 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 29 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.46622316050541 46.5318551242157 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 30 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.91606549729808 46.91650717275253 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 31 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.36590783409075 47.30115922128936 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 32 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.81575017088342 47.68581126982619 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 33 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.26559250767609 48.07046331836302 1.8301280711955814 x000000 xFF0000 2 1.8301280711955814 34 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.5223106005661 49.37335702337246 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 70.0295296631542 50.7901022184317 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.53674872574229 52.206847413490934 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 69.04396778833038 53.62359260855017 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.55118685091847 55.040337803609404 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 68.05840591350656 56.45708299866864 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.56562497609465 57.873828193727874 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.07284403868275 59.29057338878711 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.58006310127084 60.707318583846344 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.08728216385893 62.12406377890558 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.59450122644702 63.540808973964815 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 65.10172028903511 64.95755416902405 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.6089393516232 66.37429936408329 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 64.1161584142113 67.79104455914252 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 14 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.62337747679939 69.20778975420176 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 15 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 63.13059653938748 70.62453494926099 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 16 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.637815601975575 72.04128014432023 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 17 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.14503466456367 73.45802533937946 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 18 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.65225372715176 74.8747705344387 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 19 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 61.15947278973985 76.29151572949793 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 20 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.66669185232794 77.70826092455717 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 21 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 60.173910914916036 79.1250061196164 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 22 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.68112997750413 80.54175131467564 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 23 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 59.18834904009222 81.95849650973487 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 24 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.69556810268031 83.3752417047941 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 25 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.202787165268404 84.79198689985334 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 26 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.710006227856496 86.20873209491258 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 27 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.21722529044459 87.62547728997181 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 28 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.72444435303268 89.04222248503105 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 29 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 56.23166341562077 90.45896768009028 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 30 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.738882478208865 91.87571287514952 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 31 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 55.24610154079696 93.29245807020875 3.4763294909066076 x000000 xFF0000 2 3.4763294909066076 32 0

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

bounds -19.702689974716996 101.26559250767609 4.675219652602372 133.6286093236459 