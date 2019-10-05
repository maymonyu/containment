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
	containment 32.46130147973075 22.59843980905842 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 28.65325369932687 24.996099522646045 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.845205918922993 27.39375923623367 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.037158138519114 29.791418949821296 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.229110358115236 32.18907866340892 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.421062577711359 34.58673837699655 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.613014797307482 36.98439809058418 4.1504674181278745 x000000 xFF0000 2 2.026142609715258
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.097188001626936 32.514059991865324 0.19739555984988066 x000000 xFF0000 2 2.1739314889888774
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 9.979710609748764 28.101446951256182 0.19739555984988066 x000000 xFF0000 2 2.1739314889888774
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 10.862233217870592 23.68883391064704 0.19739555984988066 x000000 xFF0000 2 2.1739314889888774
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 11.74475582599242 19.2762208700379 0.19739555984988066 x000000 xFF0000 2 2.1739314889888774
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.627278434114249 14.863607829428759 0.19739555984988066 x000000 xFF0000 2 2.1739314889888774
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.11218406930188 14.49533966156432 1.9195673303788037 x000000 xFF0000 2 1.0584814451143423
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.341254474999847 16.03318344545449 1.9195673303788037 x000000 xFF0000 2 1.0584814451143423
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.570324880697815 17.57102722934466 1.9195673303788037 x000000 xFF0000 2 1.0584814451143423
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 29.799395286395782 19.108871013234833 1.9195673303788037 x000000 xFF0000 2 1.0584814451143423
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 34.02846569209375 20.646714797125004 1.9195673303788037 x000000 xFF0000 2 1.0584814451143423

bounds -15.902811998373064 59.02846569209375 -10.50466033843568 61.98439809058418 