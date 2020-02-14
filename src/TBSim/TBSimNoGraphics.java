/*
 * TBSimNoGraphics.java
 */

package TBSim;

import java.io.*;
import EDU.gatech.cc.is.abstractrobot.*;
import EDU.gatech.cc.is.clay.*;
import EDU.gatech.cc.is.util.*;

/**
 * Application that runs a control system in simulation with no graphics.
 * <P>
 * To run this program, first ensure you have set your CLASSPATH correctly,
 * then type "java TBSim.TBSimNoGraphics".
 * <P>
 * For more detailed information, see the
 * <A HREF="docs/index.html">TBSim page</A>.
 * <P>
 * <A HREF="../EDU/cmu/cs/coral/COPYRIGHT.html">Copyright</A> 
 * (c)1997, 1998 Tucker Balch and GTRC
 * (c)1998 Tucker Balch and Carnegie Mellon University
 *
 * @author Tucker Balch
 * @version $Revision: 1.1 $
 */

public class TBSimNoGraphics {
    private static SimulationCanvas simulation;
    private static String dsc_file;

    /**
     * Main for TBSimNoGraphics.
     */
    public static void main(String[] args) {
        /*--- check the arguments ---*/
        if (args.length == 1) {
            if (args[0].equalsIgnoreCase("-version")) {
                System.out.println(
                        TBVersion.longReport());
                System.exit(0);
            } else {
                dsc_file = args[0];


                int robotsVelocity = 8;
                String[] algorithms = new String[2];
                algorithms[0] = "Spiral";
                algorithms[1] = "Straight";

                int runCount = 0;

                for (int i = 0; i <= 9; i++) {
                    for (int numberOfRobots = 10; numberOfRobots <= 50; numberOfRobots += 10) {
                        for (double locustsVelocity = (double) robotsVelocity / 4; locustsVelocity <= robotsVelocity;
                             locustsVelocity += (double) robotsVelocity / 4) {
                            for (int algorithm = 0; algorithm < algorithms.length; algorithm++) {
                                for (int cycles = 0; cycles < 20; cycles++) {

                                    String settingFilename = "setting" + Integer.toString(i + 1);
                                    String algorithmName = "containment" + algorithms[algorithm];
                                    GenerateDscFile(locustsVelocity, numberOfRobots, settingFilename, algorithmName);

                                    /*--- tell the simulation to load and run ---*/
                                    System.out.println(TBVersion.shortReport());
                                    simulation =
                                            new SimulationCanvas(null, 0, 0, dsc_file);
                                    simulation.reset();
                                    if (simulation.descriptionLoaded())
                                    // only if loaded ok.
                                    {
                                        simulation.start();
                                    }
                                    else {
                                        System.out.println("*****************************************************");
                                        System.out.println(
                                                "usage: TBSimNoGraphics [-version] descriptionfile");
                                    }

                                    while (simulation.keep_running) {
                                    }

                                    int settingNumber = i + 1;
                                    String algorithmTitle = algorithms[algorithm];
                                    WriteResultsToFile(settingNumber, numberOfRobots, robotsVelocity, locustsVelocity, algorithmTitle,
                                            simulation.timeReachingMEP, simulation.deadLocusts, simulation.runAwayLocusts,
                                            simulation.livingLocusts, simulation.inMEPLocusts);

                                    System.out.println("&&&&&&&&&&&&&&&&7");

//                                    simulation.quit();

                                    runCount++;

//                                    if (runCount == 200) {
//                                        System.gc();
//                                        Thread.sleep(15000);
//                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static void WriteResultsToFile(int settingNumber, int numberOfRobots, int robotsVelocity, double locustsVelocity,
                                          String algorithmTitle, long timeReachingMEP, int deadLocusts, int runAwayLocusts,
                                          int livingLocusts, int inMEPLocusts) {
        try {
            String filePath = "/home/maymonyu/IdeaProjects/tb/src/TBSim/AutomationResults/results.csv";
            File f = new File(filePath);

            PrintWriter out = null;
            if (f.exists() && !f.isDirectory()) {
                out = new PrintWriter(new FileOutputStream(new File(filePath), true));
            } else {
                out = new PrintWriter(filePath);
                out.append("Setting number, Number of robots, Robots velocity, Locusts velocity, Algorithm, Reaching time to MEP, Living locusts, Dead locusts, Run away locusts, Living locusts in MEP");
                out.append("\n");
            }

            String simulationMetadata = String.format("%d,%d,%d,%.1f,%s,%d,%d,%d,%d,%d", settingNumber, numberOfRobots, robotsVelocity,
                    locustsVelocity, algorithmTitle, timeReachingMEP, livingLocusts, deadLocusts, runAwayLocusts, inMEPLocusts);

            out.append(simulationMetadata);
            out.append("\n");
            out.close();
        } catch (Exception ex) {
            System.out.println("exception in writing to results.csv");
        }
    }

    public static void GenerateDscFile(double velocity, int numberOfRobots, String settingFilename,
                                       String algorithmName) {
        AutoDscGenerator.CreateAutomaticDsc(velocity, numberOfRobots, settingFilename, algorithmName);
    }

}
