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
	containment 35.93334560620306 29.35897907930887 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.80003681860918 30.076937237926607 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.666728031015296 30.794895396544344 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.53341924342141 31.51285355516208 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.40011045582753 32.23081171377982 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.26680166823365 32.94876987239756 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.133492880639764 33.6667280310153 1.9379701606131157 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.31622776601684 34.94868329805051 2.819842099193151 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.94868329805051 36.84604989415154 2.819842099193151 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.775140493301244 37.97439119569462 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.325421479903724 39.92317358708386 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.875702466506205 41.871955978473096 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 47.425983453108685 43.82073836986233 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.976264439711166 45.76952076125157 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.526545426313646 47.71830315264081 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 46.07682641291613 49.667085544030044 3.368391501643679 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 45.00172562682501 49.94127797804853 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 43.00517688047501 49.82383393414559 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 41.00862813412502 49.70638989024265 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.012079387775024 49.588945846339705 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 37.01553064142503 49.47150180243676 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.01898189507504 49.35405775853382 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.02243314872504 49.23661371463088 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.025884402375052 49.119169670727935 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.02933565602506 49.00172562682499 4.7711448031004124 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.835601012694642 48.013606076167854 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.506803038083927 46.04081822850357 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.17800506347321 44.06803038083928 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.849207088862496 42.095242533174996 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.52040911425178 40.12245468551071 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.191611139641065 38.149666837846425 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.86281316503035 36.17687899018214 6.118036629764959 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 27.707106781186546 36.292893218813454 0.7853981633974483 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.121320343559642 34.87867965644036 0.7853981633974483 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.535533905932738 33.46446609406727 0.7853981633974483 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.949747468305834 32.05025253169418 0.7853981633974483 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.36396103067893 30.63603896932108 0.7853981633974483 x000000 xFF0000 2
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.77817459305202 29.221825406947985 0.7853981633974483 x000000 xFF0000 2

bounds 16.86281316503035 58.94868329805051 19.221825406947985 59.94127797804853 