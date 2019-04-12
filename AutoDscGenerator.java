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

    private static double[][] generateRobots(int [][] polygonVertices){
        double FOV_DISTANCE = 1;
        int numOfVertices = polygonVertices.length;

        for(int i=0; i<numOfVertices; i++){
            int [] currVertex = polygonVertices[i];
            int [] nextVertex = polygonVertices[(i+1) % numOfVertices];

            double distance = calculateDistance(currVertex, nextVertex);
            int numOfRobotsToCoverEdge = (int) Math.ceil(distance / (2 * FOV_DISTANCE));

            for(int j=0; j<numOfRobotsToCoverEdge; j++){

            }
        }

        return new double[1][1];
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

            double [][] robots = generateRobots(coordinates[0]);

            outputFile.append("New Line!");

            outputFile.close();
        }
        catch (Exception ex) {
        }

    }
}

