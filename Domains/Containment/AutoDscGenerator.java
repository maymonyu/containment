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
import java.nio.file.Files;


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
        double error = 0.2;
        double totalDistance = calculateDistance(A, B);
        double distanceSum = calculateDistance(A, C) + calculateDistance(B, C);
        double distanceSubtract = calculateDistance(A, C) - calculateDistance(B, C);

        System.out.println("firstLength = " + calculateDistance(A, C));
        System.out.println("secondLength = " + calculateDistance(B, C));
        System.out.println("adding = " + distanceSum);
        System.out.println("subtructing = " + distanceSubtract);
        System.out.println("actual result = " + calculateDistance(A, B));

        return (distanceSum + error >= totalDistance && distanceSum - error <= totalDistance) ||
                (distanceSubtract + error >= totalDistance && distanceSubtract - error <= totalDistance);
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

    private static List<RobotMetadata> generateRobots(Vec2 [] polygonVertices){
//        final double FOV_DISTANCE = 3;
//        final double X = FOV_DISTANCE / 3;

        final double FOV_DISTANCE = 1;
        final double X = 0.5;

        int numOfVertices = polygonVertices.length;
        List<RobotMetadata> robotsMetadatas = new ArrayList<RobotMetadata>();
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
//            double robotSteer = GetSteerByHeadings(previousEdgeHeading, robotHeading);
            double robotSteer = robotHeading;


//            if(lastRobotLocationOnSegment != null){
//                currVertex = getCircleLineIntersectionPoint(currVertex,
//                        nextVertex, lastRobotLocationOnSegment, FOV_DISTANCE).get(1);
//            }

            double distance = calculateDistance(currVertex, nextVertex);
            int numOfRobotsToCoverEdge = (int) Math.ceil(distance / (2 * FOV_DISTANCE));

            Vec2 currLocation = currVertex;
            int j = 0;

            System.out.println("Next edgeeeee");
            boolean isLastOnEdge = false;

            while (!isLastOnEdge){
                System.out.println("lastRobotLocationOnSegment: " + lastRobotLocationOnSegment);

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

                RobotMetadata robotMetadata = new RobotMetadata(robotLocation, robotHeading, robotSteer, j+1, convertBooleanToInt(isLastOnEdge));

                robotsMetadatas.add(robotMetadata);

                currLocation = robotLocation;
                isLastOnEdge = calculateDistance(currLocation, nextVertex) < FOV_DISTANCE;
                j++;
            }

            lastRobotLocationOnSegment = robotsMetadatas.get(robotsMetadatas.size() - 1).location;
        }

        return robotsMetadatas;
    }

    private static int convertBooleanToInt(boolean bool){
        if(bool) return 1;
        return 0;
    }

    private static Vec2[] generatePolygonVertices(int [][] coordinates){
        Vec2 [] verticesArray = new Vec2[coordinates.length];

        for(int i=0; i < coordinates.length; i++){
            int [] currCoordinate = coordinates[i];
            verticesArray[i] = new Vec2(currCoordinate[0], currCoordinate[1]);
        }

        return verticesArray;
    }

    private static String [] getRobotDefinitions(List<RobotMetadata> robotsMetadatas){
        String [] robotsDefinitions = new String[robotsMetadatas.size()];

        for (int i=0; i<robotsMetadatas.size(); i++){
            RobotMetadata currRobotMetadata = robotsMetadatas.get(i);
            robotsDefinitions[i] = String.format(
                    "robot EDU.gatech.cc.is.abstractrobot.MultiForageN150Sim\n" +
                    "\tcontainment %s %s %s x000000 xFF0000 2 %s %s %s",
                    currRobotMetadata.location.x, currRobotMetadata.location.y, currRobotMetadata.heading, currRobotMetadata.steering, currRobotMetadata.indexOnEdge, currRobotMetadata.isLastOnEdge);
        }

        return robotsDefinitions;
    }

    private static String [] getBounds(List<RobotMetadata> robots){
        double minX = Double.POSITIVE_INFINITY;
        double minY = Double.POSITIVE_INFINITY;
        double maxX = Double.POSITIVE_INFINITY * -1;
        double maxY = Double.POSITIVE_INFINITY * -1;

        for(int i=0; i<robots.size(); i++){
            RobotMetadata robot = robots.get(i);
            double x = robot.location.x;
            double y = robot.location.y;

            if(x < minX) minX = x;
            if(y < minY) minY = y;

            if(x > maxX) maxX = x;
            if(y > maxY) maxY = y;
        }

        minX -= 30;
        minY -= 30;
        maxX += 30;
        maxY += 40;

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

    private static double calculateRuntimeUpperBound(double secRadius){
        double maxPassingLength = secRadius;
        double totalNumberOfRobotTypes = 2;
        double totalLength = maxPassingLength * totalNumberOfRobotTypes;

        double totalTimeUnitsToPassOneMeter = 2000;

        return totalLength * totalTimeUnitsToPassOneMeter;
    }

    private static int getHighestNumberInStringsArray(String[] stringArray){
        int [] intsArray = new int[stringArray.length];
        for (int i=0; i<stringArray.length; i++){
            intsArray[i] = Integer.parseInt(stringArray[i]);
        }

        int max = Arrays.stream(intsArray).max().getAsInt();
        return max;
    }

    private static String getNextArchivedDirNumber(){
        File file = new File("ContainmentDsc/");
        String[] directories = file.list(new FilenameFilter() {
            @Override
            public boolean accept(File current, String name) {
                return new File(current, name).isDirectory();
            }
        });
//        System.out.println(Arrays.toString(directories));

        int nextArchiveDirNumber = getHighestNumberInStringsArray(directories) + 1;
        String nextArchiveDirNumberAsString = Integer.toString(nextArchiveDirNumber);

        return nextArchiveDirNumberAsString;
    }

    public static String verticesToString(Vec2 [] vertices){
        String restult = "";

        for(int i = 0; i < vertices.length; i++){
            restult += String.format("(%f %f)", vertices[i].x, vertices[i].y);
        }

        return restult;
    }

    public static void saveSimulationMetadata(String archiveDirNumber, Vec2 [] polygonVertices, double runtimeUpperBound,
                                              double secRadius, double polygonArea, int numberOfRobots){
        try {
            //            String filePath = "ContainmentDsc/simulationsMetadatas.csv";
            String filePath = "ContainmentDsc/differentX2.csv";
            File f = new File(filePath);

            PrintWriter out = null;
            if (f.exists() && !f.isDirectory()) {
                out = new PrintWriter(new FileOutputStream(new File(filePath), true));
            } else {
                out = new PrintWriter(filePath);
                out.append("id,practical time,polygon, theoretical time,SEC diameter,polygon area,number of robots");
                out.append("\n");
            }

            String vertices = verticesToString(polygonVertices);
            double secDiameter = 2 * secRadius;
            String simulationMetadata = String.format("%s,,%s,%f,%f,%f,%d", archiveDirNumber, vertices, runtimeUpperBound,
                    secDiameter, polygonArea, numberOfRobots);

            out.append(simulationMetadata);
            out.append("\n");
            out.close();
        }
        catch (Exception ex){

        }
    }

    public static double calculatePolygonArea(Vec2 [] vertices){
        double sum = 0;
        for (int i = 0; i < vertices.length; i++)
        {
            if (i == 0)
            {
//                System.out.println(vertices[i].x + "x" + (vertices[i + 1].y + "-" + vertices[vertices.length - 1].y));
                sum += vertices[i].x * (vertices[i + 1].y - vertices[vertices.length - 1].y);
            }
            else if (i == vertices.length - 1)
            {
//                System.out.println(vertices[i].x + "x" + (vertices[0].y + "-" + vertices[i - 1].y));
                sum += vertices[i].x * (vertices[0].y - vertices[i - 1].y);
            }
            else
            {
//                System.out.println(vertices[i].x + "x" + (vertices[i + 1].y + "-" + vertices[i - 1].y));
                sum += vertices[i].x * (vertices[i + 1].y - vertices[i - 1].y);
            }
        }

        double area = 0.5 * Math.abs(sum);
        return area;
    }

    public static Vec2[] readVerticesFromFile(String filePath){
        List<Vec2> vertices = new ArrayList<Vec2>();
        try {
            List<String> lines = Files.readAllLines(Paths.get(filePath));

            String line = lines.get(0); // (32.000000 96.000000)(17.000000 72.000000)
            System.out.println("vertices: " + line);

            var lineSplited = line.split("\\)"); // ["(32.000000 96.000000", "(17.000000 72.000000"]
            System.out.println("vertices: " + lineSplited[0]);

            for (int i = 0; i < lineSplited.length; i++) {
                String onlyCoordinates = lineSplited[i].substring(1); // "32.000000 96.000000"
                System.out.println("vertices: " + onlyCoordinates);

                var coordinatesArray = onlyCoordinates.split(" "); // ["32.000000", "96.000000"]

                double x = Double.parseDouble(coordinatesArray[0]);
                double y = Double.parseDouble(coordinatesArray[1]);

                vertices.add(new Vec2(x, y));
            }
        }
        catch (IOException e){
        }

        Vec2[] verticesArray = new Vec2[vertices.size()];
        vertices.toArray(verticesArray);

        return verticesArray;
    }

    public static Vec2 calculateCentroid(Vec2 [] polygonVertices){
        double centroidX = 0, centroidY = 0;

        for(Vec2 vertex : polygonVertices) {
            centroidX += vertex.x;
            centroidY += vertex.y;
        }

        return new Vec2(centroidX / polygonVertices.length, centroidY / polygonVertices.length);
    }

    public static void addLocust(Writer outputFile, Vec2 [] polygonVertices){
        int locustNumber = 100;
        String [] locustDefinitions = new String[locustNumber];
        double locustSize = 0.5;

        Vec2 centroid = calculateCentroid(polygonVertices);

        for(int i = 0; i<locustDefinitions.length; i++) {
            double xCoordinate = Math.pow(-1, i) * (0.1 * i) + centroid.x;
            double yCoordinate = Math.pow(-1, i) * (0.1 * i) + centroid.y;

            String locustDefinition = String.format("object EDU.gatech.cc.is.simulation.SquiggleBallSim\n" +
                    "\t%s %s 0 %s xFFA000 x000000 0 3.4763294909066076 5 0", xCoordinate, yCoordinate, locustSize);

            locustDefinitions[i] = locustDefinition;
        }

        writeLinesToFile(outputFile, locustDefinitions);
    }


    public static List<RobotMetadata> takeRandomElementsFromList(List<RobotMetadata> list){
        int numberOfElementsToPeek = list.size() / 5;
        List<RobotMetadata> randomList = new ArrayList<RobotMetadata>();

        Collections.shuffle(list);

        for(int i = 0; i < numberOfElementsToPeek; i++) {
            RobotMetadata randomElement = list.get(i);
            randomList.add(randomElement);
        }

        return randomList;
    }


    public static void main(String[] args)
    {
        String filename = "containment2.dsc";
        double secRadius = 0;
        String archiveDirNumber = getNextArchivedDirNumber();

        try {
            copyFileUsingChannel(new File("descPrefix.txt"), new File(filename));

            Writer outputFile = new BufferedWriter(new FileWriter(filename, true));

//            Polygen gen = new Polygen(100);
//            gen.render();
//            int[][][] coordinates = gen.getCoordinates();
//
//            Vec2 [] polygonVertices = generatePolygonVertices(coordinates[0]);

            Vec2 [] polygonVertices = readVerticesFromFile("ContainmentDsc/vertices.txt");
            double polygonArea = calculatePolygonArea(polygonVertices);

            secRadius = SmallestEnclosingCircle.getSmallestEnclosingCircleRadius(polygonVertices);
            double runtimeUpperBound = calculateRuntimeUpperBound(secRadius);
            System.out.println("UpperBound: " + runtimeUpperBound);

            List<RobotMetadata> robots = generateRobots(polygonVertices);

            List<RobotMetadata> randomRobots = takeRandomElementsFromList(robots);
            System.out.println("randomList length: " + randomRobots.size());

            String [] robotsDefinitions = getRobotDefinitions(randomRobots);

            writeLinesToFile(outputFile, robotsDefinitions);

            addLocust(outputFile, polygonVertices);

            String [] bounds = getBounds(randomRobots);

            writeBounds(outputFile, bounds);

//            saveSimulationMetadata(archiveDirNumber, polygonVertices, runtimeUpperBound,
//                    secRadius, polygonArea, robots.size());
            outputFile.close();
        }
        catch (Exception ex) {
            System.out.println(ex);
        }

//        try {
//            new File("ContainmentDsc/" + archiveDirNumber).mkdirs();
//
//            System.out.println("archiveFilePath: " + archiveDirNumber);
//            String dirPath = "ContainmentDsc/" + archiveDirNumber;
//            String filePath = dirPath + "/" + archiveDirNumber;
//
//            copyFileUsingChannel(new File(filename), new File(filePath));
//
//            try {
//                String upperBoundFilePath = dirPath + "/" + "upperBound.txt";
//                Writer upperBoundFile = new BufferedWriter(new FileWriter(upperBoundFilePath, true));
//
//                upperBoundFile.append("\n");
//                upperBoundFile.append("Upper Bound: ");
//
//                upperBoundFile.append(Double.toString(calculateRuntimeUpperBound(secRadius)));
//                upperBoundFile.append("\n");
//
//                upperBoundFile.append("Actual time: ");
//                upperBoundFile.append("\n");
//
//                upperBoundFile.append("Redundant robots per round: ");
//                upperBoundFile.append("\n");
//
//                upperBoundFile.close();
//            }
//            catch (Exception ex){
//                System.out.println(ex);
//            }
//        }
//        catch (Exception ex) {
//            System.out.println(ex);
//        }
    }
}

