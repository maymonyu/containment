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
	containment 33.85857864376269 18.989949493661168 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.57573593128807 20.9698484809835 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.292893218813454 22.949747468305834 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.010050506338835 24.929646455628166 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.72720779386422 26.9095454429505 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.4443650813896 28.88944443027283 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.16152236891498 30.869343417595164 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.14142135623731 31.010050506338832 3.283489708193957 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.0 32.0 4.71238898038469 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.790470911269127 31.02219758592259 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.37141273380738 29.066592757767772 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.952354556345634 27.110987929612953 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.533296378883888 25.155383101458135 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.114238201422141 23.199778273303316 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 8.695180023960395 21.244173445148498 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 8.276121846498649 19.28856861699368 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 8.209529088730873 18.97780241407741 6.07209197395684 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 8.8 17.4 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.4 16.2 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.0 15.0 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.6 13.8 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 15.2 12.600000000000001 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 16.8 11.400000000000002 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.400000000000002 10.200000000000003 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.2 9.6 0.9272952180016122 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.841178475376555 9.540757591313499 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.523535426129662 10.622272773940496 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.20589237688277 11.703787956567494 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.888249327635876 12.785303139194491 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.570606278388983 13.866818321821489 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.25296322914209 14.948333504448486 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.935320179895196 16.029848687075486 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 32.6176771306483 17.111363869702483 2.1421338066285234 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.15882152462345 17.4592424086865 2.1421338066285234 x000000 xFF0000 2

bounds -1.7904709112691268 43.85857864376269 -0.45924240868650124 42.0 