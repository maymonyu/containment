import java.util.Vector;
import EDU.gatech.cc.is.util.Vec2;
import java.io.*;
import EDU.gatech.cc.is.util.*;
import EDU.gatech.cc.is.abstractrobot.*;
import EDU.gatech.cc.is.communication.*;
import java.util.Enumeration;
import EDU.cmu.cs.coral.simulation.*;
import EDU.gatech.cc.is.simulation.*;
import EDU.cmu.cs.coral.util.Circle2;
import java.util.List;
import java.util.Arrays;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.File;
import java.nio.*;
//import java.io.file.Paths;
import java.nio.file.Path;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.Writer;
import java.util.*;


public class AutoDscGenerator
{
    private static void copyFileUsingChannel(File src, File dest) throws IOException {
        FileChannel sourceChannel = null;
        FileChannel destinationChannel = null;
        try {
            sourceChannel = new FileInputStream(src).getChannel();
            destinationChannel = new FileOutputStream(dest).getChannel();
            destinationChannel.transferFrom(sourceChannel, 0, sourceChannel.size());
        }
        catch (Exception ex) {

        }
        finally {
            sourceChannel.close();
            destinationChannel.close();
        }
    }

    private static double calculateDistance(int[] point1, int[] point2){
        double dx = point1[0] - point2[0];
        double dy = point1[1] - point2[1];

        return Math.sqrt(dx * dx + dy * dy);
    }

//    private Vec2 GetRightPoint(long time, int robotId){
//        SimpleN150Sim robot = GetRobot(robotId);
//
//        double radius = MultiForageN150.VISION_RANGE;
//
//        double radAngle = robot.getTurretHeading(time);
//        radAngle -= Math.PI / 2;
//
////		System.out.println("radAngle: " + radAngle);
//
//        return GetPointByDistanceAndRadians(radius, radAngle, robot.getPosition());
//    }

    private static Vec2 GetPointByDistanceAndRadians(double distance, double radians, Vec2 position){
        double x = distance * Math.cos(radians) + position.x;
        double y = distance * Math.sin(radians) + position.y;

//		System.out.println("x = " + x + ", y = " + y);

        return new Vec2(x, y);
    }

    private static double calculateRadianIncline(double [] first, double [] second){
        double incline = 0;

        Vec2 position = new Vec2(first[0], first[1]);
        Vec2 reachingPoint = new Vec2(second[0], second[1]);

        if (position.x == reachingPoint.x){
            if (position.y < reachingPoint.y){
                return Math.PI / 2;
            }
            else{
                return -Math.PI / 2;
            }
        }

        incline = (reachingPoint.y - position.y) / (reachingPoint.x - position.x);
        System.out.println("incline: " + incline);

        double angle = Math.atan(incline);

        if(position.x > reachingPoint.x){
            angle = angle + Math.PI;
        }

//		System.out.println("angle: " + angle);

        return angle;
    }

    private static List<Vec2> generateRobots(int [][] polygonVertices){
        double FOV_DISTANCE = 1;
        int numOfVertices = polygonVertices.length;
        List<Vec2> robotsLocations = new ArrayList<Vec2>();

        for(int i=0; i<numOfVertices; i++){
            int [] currVertex = polygonVertices[i];
            int [] nextVertex = polygonVertices[(i+1) % numOfVertices];

            double distance = calculateDistance(currVertex, nextVertex);
            int numOfRobotsToCoverEdge = (int) Math.ceil(distance / (2 * FOV_DISTANCE));

            double [] currLocation = new double[]{ currVertex[0], currVertex[1]};
            double [] nextLocation = new double[]{ nextVertex[0], nextVertex[1]};

            Vec2 currLocationAsVec = new Vec2(currLocation[0], currLocation[1]);

            double radianIncline = calculateRadianIncline(currLocation, nextLocation);

            for(int j=0; j<numOfRobotsToCoverEdge; j++){
                double distanceBetweenRobots = 2 * FOV_DISTANCE;
                if(j == 0) distanceBetweenRobots = FOV_DISTANCE;

                Vec2 robotLocation = GetPointByDistanceAndRadians(distanceBetweenRobots, radianIncline, currLocationAsVec);

                robotsLocations.add(robotLocation);

                currLocationAsVec = robotLocation;
            }
        }

        return robotsLocations;
    }

    public static void main(String[] args)
    {
        String filename = "containment2.dsc";
        System.out.println("Auto !");

        try {
            copyFileUsingChannel(new File("descPrefix.txt"), new File(filename));

            Writer outputFile = new BufferedWriter(new FileWriter(filename, true));

            Polygen gen = new Polygen();
            gen.render();
            int[][][] coordinates = gen.getCoordinates();

            List<Vec2> robots = generateRobots(coordinates[0]);

            outputFile.append("New Line!");

            outputFile.close();
        }
        catch (Exception ex) {
        }

    }
}

