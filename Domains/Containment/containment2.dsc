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
	containment 14.858777340039786 7.9096109718308405 1.8788491078186729 x000000 xFF0000 2 0.8834073465
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.57633202011936 9.728832915492521 1.8788491078186729 x000000 xFF0000 2 0.8834073465
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.293886700198932 11.548054859154202 1.8788491078186729 x000000 xFF0000 2 0.8834073465
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.141222659960214 13.09038902816916 1.8788491078186729 x000000 xFF0000 2 0.8834073465
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.81286514153446 16.994157735448663 3.2040114635857506 x000000 xFF0000 2 2.5414302857022117
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.43859542460338 22.982473206345993 3.2040114635857506 x000000 xFF0000 2 2.5414302857022117
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 33.18713485846554 27.005842264551333 3.2040114635857506 x000000 xFF0000 2 2.5414302857022117
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.358586700233474 31.422299469105052 4.218447611465109 x000000 xFF0000 2 3.71122953752543
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 25.07576010070042 34.26689840731515 4.218447611465109 x000000 xFF0000 2 3.71122953752543
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.641413299766526 35.57770053089495 4.218447611465109 x000000 xFF0000 2 3.71122953752543
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 17.94174202707276 36.58834840541455 4.90978454023457 x000000 xFF0000 2 4.56411607584984
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.691302546743483 33.01592461852034 6.180103698656886 x000000 xFF0000 2 5.544944119445728
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 14.07390764023045 27.04777385556103 6.180103698656886 x000000 xFF0000 2 5.544944119445728
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 13.456512733717418 21.07962309260172 6.180103698656886 x000000 xFF0000 2 5.544944119445728
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.839117827204385 15.111472329642414 6.180103698656886 x000000 xFF0000 2 5.544944119445728
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 12.308697453256515 9.984075381479654 6.180103698656886 x000000 xFF0000 2 5.544944119445728

bounds -12.691302546743485 58.81286514153446 -17.09038902816916 61.58834840541455 