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
	containment 71.02224083391378 77.3646235713575 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 66.55560208478445 77.91155892839375 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.08896333565512 78.45849428542999 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 57.62232458652579 79.00542964246624 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.15568583739646 79.55236499950249 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 48.68904708826713 80.09930035653873 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.2224083391378 80.64623571357498 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 39.75576959000847 81.19317107061123 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.28913084087914 81.74010642764748 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 30.822492091749808 82.28704178468372 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.355853342620478 82.83397714171997 4.5905465433647725 x000000 xFF0000 2 4.5905465433647725 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 24.21931499756192 78.87352212997015 6.096206037260675 x000000 xFF0000 2 6.096206037260675 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 23.38280249109009 74.45195602433336 6.096206037260675 x000000 xFF0000 2 6.096206037260675 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.54628998461826 70.03038991869656 6.096206037260675 x000000 xFF0000 2 6.096206037260675 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 21.709777478146428 65.60882381305976 6.096206037260675 x000000 xFF0000 2 6.096206037260675 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.873264971674597 61.18725770742295 6.096206037260675 x000000 xFF0000 2 6.096206037260675 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 20.036752465202767 56.765691601786145 6.096206037260675 x000000 xFF0000 2 6.096206037260675 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 19.200239958730936 52.34412549614934 6.096206037260675 x000000 xFF0000 2 6.096206037260675 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 18.363727452259106 47.92255939051253 6.096206037260675 x000000 xFF0000 2 6.096206037260675 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 22.43235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 26.93235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 31.43235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 35.93235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 40.43235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 44.93235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 49.43235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 7 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 53.93235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 8 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 58.43235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 9 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 62.93235933410245 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 10 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 67.43235933410244 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 11 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 71.93235933410244 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 12 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 76.43235933410244 46.0 1.5707963267948966 x000000 xFF0000 2 1.5707963267948966 13 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.71340669658677 50.442196202905016 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 1 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.42368644559593 54.93286009326308 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 2 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 75.1339661946051 59.423523983621145 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 3 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.84424594361425 63.91418787397921 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 4 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.55452569262341 68.40485176433727 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 5 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 74.26480544163257 72.89551565469533 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 6 0
robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim
	containment 73.97508519064174 77.3861795450534 3.2060194930153463 x000000 xFF0000 2 3.2060194930153463 7 0

bounds -11.636272547740894 106.43235933410244 16.0 122.83397714171997 