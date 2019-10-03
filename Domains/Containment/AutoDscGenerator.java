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

    private static double calculateDistance(Vec2 point1, Vec2 point2){
        double dx = point1.x- point2.x;
        double dy = point1.y - point2.y;

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

    private static double calculateRadianIncline(Vec2 position, Vec2 reachingPoint){
        double incline = 0;

        if (position.x == reachingPoint.x){
            if (position.y < reachingPoint.y){
                return Math.PI / 2;
            }
            else{
                return -Math.PI / 2;
            }
        }

        incline = (reachingPoint.y - position.y) / (reachingPoint.x - position.x);
//        System.out.println("incline: " + incline);

        double angle = Math.atan(incline);

        if(position.x > reachingPoint.x){
            angle = angle + Math.PI;
        }

//		System.out.println("angle: " + angle);

        return angle;
    }

    private static List<Vec2> getCircleLineIntersectionPoint(Vec2 pointA,
                                                             Vec2 pointB, Vec2 center, double radius) {
        double baX = pointB.x - pointA.x;
        double baY = pointB.y - pointA.y;
        double caX = center.x - pointA.x;
        double caY = center.y - pointA.y;

        double a = baX * baX + baY * baY;
        double bBy2 = baX * caX + baY * caY;
        double c = caX * caX + caY * caY - radius * radius;

        double pBy2 = bBy2 / a;
        double q = c / a;

        double disc = pBy2 * pBy2 - q;
        if (disc < 0) {
            return Collections.emptyList();
        }
        // if disc == 0 ... dealt with later
        double tmpSqrt = Math.sqrt(disc);
        double abScalingFactor1 = -pBy2 + tmpSqrt;
        double abScalingFactor2 = -pBy2 - tmpSqrt;

        Vec2 p1 = new Vec2(pointA.x - baX * abScalingFactor1, pointA.y
                - baY * abScalingFactor1);
        if (disc == 0) { // abScalingFactor1 == abScalingFactor2
            return Collections.singletonList(p1);
        }
        Vec2 p2 = new Vec2(pointA.x - baX * abScalingFactor2, pointA.y
                - baY * abScalingFactor2);
        return Arrays.asList(p1, p2);
    }

    private static double GetSteerByHeadings(double firstHeading, double secondHeading){
        if (secondHeading > Math.PI){
            secondHeading = Math.PI * 2 - secondHeading;
        }

        return (firstHeading + secondHeading) / 2;
    }

    private static double calculateIncline(Vec2 lineStart, Vec2 lineEnd){
        return (lineStart.y - lineEnd.y) / (lineStart.x - lineEnd.x);
    }

    private static double calculateDistanceFromPointToLine(Vec2 point, Vec2 lineStart, Vec2 lineEnd){
        double incline = calculateIncline(lineStart, lineEnd);

        //A = m, B = -1, C = y1 - mx1
        double A = incline;
        double B = -1;
        double C = lineStart.y - incline * lineStart.x;

        // |Ax+By+C| / sqrt(A^2 + B^2)
        return (Math.abs(A*point.x + B*point.y + C) / Math.sqrt(Math.pow(A, 2) + Math.pow(B, 2)));
    }

    private static Vec2 QuadraticEquation(double a, double b, double c){
        System.out.println("a: " + a);
        System.out.println("b: " + b);
        System.out.println("c: " + c);

        System.out.println("b^2: " + b*b);
        System.out.println("4ac: " + 4*a*c);

        double determinant = b * b - 4 * a * c;
        System.out.println("determinant: " + determinant);

        double root1 = (-b + Math.sqrt(determinant)) / (2 * a);
        double root2 = (-b - Math.sqrt(determinant)) / (2 * a);
        System.out.format("root1 = %.2f and root2 = %.2f", root1 , root2);
        System.out.println();

        Vec2 result = new Vec2();
        result.x = root1;
        result.y = root2;

        return result;
    }

    private static boolean isPointCBetweenPointsAAndB(Vec2 A, Vec2 B, Vec2 C){
        return calculateDistance(A, C) + calculateDistance(B, C) == calculateDistance(A, B);
    }

    private static Vec2 GetPointOnLineWithDistanceFromOtherPoint(Vec2 lineStart, Vec2 lineEnd,
                                                                 double distance, Vec2 point){
        double m = calculateIncline(lineStart, lineEnd);
        System.out.println("lineStart: " + lineStart);
        System.out.println("lineEnd: " + lineEnd);
        System.out.println("m: " + m);
        System.out.println("distance: " + distance);
        System.out.println("point: " + point);

        System.out.println("distance from last point to vertex: " + calculateDistance(point, lineStart));


        double x1 = lineStart.x;
        double y1 = lineStart.y;

        double x2 = point.x;
        double y2 = point.y;

        double m_x1 = m * x1;
        double y1_minus_y2_minus_mx1 = y1 - y2 -m_x1;

        double quad_m = m * m;
        double quad_x2 = x2 * x2;
        double quad_distance = distance * distance;
        double quad_y1_minus_y2_minus_mx1 = y1_minus_y2_minus_mx1 * y1_minus_y2_minus_mx1;

        double minus2 = 2 * (-1);

        double a = quad_m + 1;
//        double b = minus2 * (x2 + m * (y1 - y2 - m*x1));
        double b = minus2 * (x2 - m * y1_minus_y2_minus_mx1);
        double c = quad_x2 + quad_y1_minus_y2_minus_mx1 - quad_distance;

        Vec2 roots = QuadraticEquation(a, b, c);

        double firstY = m * (roots.x - lineStart.x) + lineStart.y;
        double secondY = m * (roots.y - lineStart.x) + lineStart.y;

        Vec2 firstPoint = new Vec2(roots.x, firstY);
        Vec2 secondPoint = new Vec2(roots.y, secondY);

        if (isPointCBetweenPointsAAndB(lineStart, lineEnd, firstPoint)){
            return firstPoint;
        }

        else{
            return secondPoint;
        }

//        double distanceFromPointToLine = calculateDistanceFromPointToLine(point, lineStart, lineEnd);
//        double distanceFromLineStartToDestinationPoint = Math.sqrt(Math.pow(distance, 2.0) - Math.pow(distanceFromPointToLine, 2.0));
//
//        return GetPointByDistanceAndRadians(distanceFromLineStartToDestinationPoint, radians, lineStart);
    }

    private static List<Vec2> generateRobots(Vec2 [] polygonVertices){
        final double FOV_DISTANCE = 3;
        final double X = FOV_DISTANCE / 2;

        int numOfVertices = polygonVertices.length;
        List<Vec2> robotsLocations = new ArrayList<Vec2>();
        Vec2 lastRobotLocationOnSegment = null;
        Vec2 robotLocation = null;

        for(int i=0; i<numOfVertices; i++){
            int previousVertexIndex;
            if(i == 0) previousVertexIndex = numOfVertices-1;
            else previousVertexIndex = (i-1) % numOfVertices;

            Vec2 previousVertex = polygonVertices[previousVertexIndex];
            Vec2 currVertex = polygonVertices[i];
            Vec2 nextVertex = polygonVertices[(i+1) % numOfVertices];

            double radianIncline = calculateRadianIncline(currVertex, nextVertex);
            double robotHeading = radianIncline + Math.PI / 2;

            double previousRadianIncline = calculateRadianIncline(previousVertex, currVertex);
            double previousEdgeHeading = previousRadianIncline + Math.PI / 2;
            double robotSteer = GetSteerByHeadings(previousEdgeHeading, robotHeading);

//            if(lastRobotLocationOnSegment != null){
//                currVertex = getCircleLineIntersectionPoint(currVertex,
//                        nextVertex, lastRobotLocationOnSegment, FOV_DISTANCE).get(1);
//            }

            double distance = calculateDistance(currVertex, nextVertex);
            int numOfRobotsToCoverEdge = (int) Math.ceil(distance / (2 * FOV_DISTANCE));

            Vec2 currLocation = currVertex;
            int j = 0;

            System.out.println("Next edgeeeee");

//            for(int j = 0; j < numOfRobotsToCoverEdge; j++){
            while (currLocation == currVertex || calculateDistance(currLocation, nextVertex) > FOV_DISTANCE){
                System.out.println("lastRobotLocationOnSegment: " + lastRobotLocationOnSegment);
//                System.out.println("currVertex: " + currVertex);
//                System.out.println("nextVertex: " + nextVertex);

                double distanceBetweenRobots = 2 * FOV_DISTANCE - X;
                if(i == 0 && j == 0) distanceBetweenRobots = FOV_DISTANCE;

//                if(j == numOfRobotsToCoverEdge - 1){
//                    distanceBetweenRobots = FOV_DISTANCE;
//                    radianIncline = radianIncline - Math.PI;
//                    currLocation = nextVertex;
//                }

                if(i != 0 && j == 0){
                    System.out.println("First");
                    robotLocation = GetPointOnLineWithDistanceFromOtherPoint(currVertex, nextVertex, distanceBetweenRobots, lastRobotLocationOnSegment);
                }
                else {
                    System.out.println("Not First");
                    robotLocation = GetPointByDistanceAndRadians(distanceBetweenRobots, radianIncline, currLocation);
                }

                robotLocation.t = robotHeading;
                robotLocation.r = robotSteer;

                robotsLocations.add(robotLocation);

                currLocation = robotLocation;
                j++;
            }

            lastRobotLocationOnSegment = robotsLocations.get(robotsLocations.size() - 1);
        }

        return robotsLocations;
    }

    private static Vec2[] generatePolygonVertices(int [][] coordinates){
        Vec2 [] verticesArray = new Vec2[coordinates.length];

        for(int i=0; i < coordinates.length; i++){
            int [] currCoordinate = coordinates[i];
            verticesArray[i] = new Vec2(currCoordinate[0], currCoordinate[1]);
        }

        return verticesArray;
    }

    private static String [] getRobotDefinitions(List<Vec2> robotsLocations){
        String [] robotsDefinitions = new String[robotsLocations.size()];

        for (int i=0; i<robotsLocations.size(); i++){
            Vec2 currRobotLocation = robotsLocations.get(i);
            robotsDefinitions[i] = String.format(
                    "robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim\n" +
                    "\tcontainment %s %s %s x000000 xFF0000 2 %s",
                    currRobotLocation.x, currRobotLocation.y, currRobotLocation.t, currRobotLocation.r);
        }

        return robotsDefinitions;
    }

    private static String [] getBounds(List<Vec2> robots){
        double minX = Double.POSITIVE_INFINITY;
        double minY = Double.POSITIVE_INFINITY;
        double maxX = Double.POSITIVE_INFINITY * -1;
        double maxY = Double.POSITIVE_INFINITY * -1;

        for(int i=0; i<robots.size(); i++){
            Vec2 robot = robots.get(i);
            if(robot.x < minX) minX = robot.x;
            if(robot.y < minY) minY = robot.y;

            if(robot.x > maxX) maxX = robot.x;
            if(robot.y > maxY) maxY = robot.y;
        }

        minX -= 25;
        minY -= 25;
        maxX += 25;
        maxY += 25;

        return new String[]{Double.toString(minX), Double.toString(maxX), Double.toString(minY), Double.toString(maxY)};
    }

    private static void writeLinesToFile(Writer file, String[] lines){
        try {
            file.append("\n");

            for (int i = 0; i < lines.length; i++) {
                file.append(lines[i]);
                file.append("\n");
            }
        } catch (Exception ex){

        }
    }

    private static void writeBounds(Writer file, String[] bounds){
        try {
            file.append("\n");
            file.append("bounds ");

            for (int i = 0; i < bounds.length; i++) {
                file.append(bounds[i]);
                file.append(" ");
            }
        } catch (Exception ex){

        }
    }

    public static void main(String[] args)
    {
        String filename = "containment2.dsc";

        try {
            copyFileUsingChannel(new File("descPrefix.txt"), new File(filename));

            Writer outputFile = new BufferedWriter(new FileWriter(filename, true));

            Polygen gen = new Polygen(100);
            gen.render();
            int[][][] coordinates = gen.getCoordinates();

            Vec2 [] polygonVertices = generatePolygonVertices(coordinates[0]);

            List<Vec2> robots = generateRobots(polygonVertices);

            String [] robotsDefinitions = getRobotDefinitions(robots);

            writeLinesToFile(outputFile, robotsDefinitions);

            String [] bounds = getBounds(robots);

            writeBounds(outputFile, bounds);

            outputFile.close();
        }
        catch (Exception ex) {
            System.out.println(ex);
        }

    }
}

