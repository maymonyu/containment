package TBSim;

import EDU.gatech.cc.is.util.Units;
import EDU.gatech.cc.is.util.Vec2;

import java.util.ArrayList;
import java.util.List;

public class PolygonStats {
    public Vec2[] polygonVertices;

    public double area;
    public double circumference;
    public double longEdgeLength;
    public double shortEdgeLength;
    public double ratioBetweenLongEdgeToShortEdge;
    public double minimalDisctanceFromCentroidToEdge;
    public double meanPolygonAngle;

    public PolygonStats(Vec2[] polygonVertices){
        this.polygonVertices = polygonVertices;

        area = AutoDscGenerator.calculatePolygonArea(polygonVertices);
        circumference = CalculateCircumference();
        longEdgeLength = GetLongEdgeLength();
        shortEdgeLength = GetShortEdgeLength();
        ratioBetweenLongEdgeToShortEdge = longEdgeLength / shortEdgeLength;
        minimalDisctanceFromCentroidToEdge = GetMinimalDistanceFromCentroidToEdge();
        meanPolygonAngle = CalculateMeanAngleOfPolygon();
    }

    public double CalculateMeanAngleOfPolygon(){
        double sum = 0;
        for(int i = 0; i < polygonVertices.length; i++) {
            Vec2 currVertex = polygonVertices[i];
            Vec2 nextVertex = polygonVertices[(i + 1) % polygonVertices.length];
            Vec2 nextNextVertex = polygonVertices[(i + 2) % polygonVertices.length];

            Vec2 direction1 = new Vec2(currVertex.x - nextVertex.x, currVertex.y - nextVertex.y);
            direction1.normalize(1);
            Vec2 direction2 = new Vec2(nextNextVertex.y - nextVertex.x, nextNextVertex.y - nextVertex.y);
            direction2.normalize(1);

//            sum += CalculateAngleBetweenDirections(direction1, direction2);
            double angle = angleBetween(nextVertex, nextNextVertex, currVertex);
            sum += angle;

            System.out.println("--------------- " + angle);
        }

        double mean = sum / polygonVertices.length;
        return mean;
    }

    public double angleBetween(Vec2 center, Vec2 current, Vec2 previous) {

        double angle =  Math.toDegrees(Math.atan2(current.x - center.x,current.y - center.y)-
                Math.atan2(previous.x- center.x,previous.y- center.y));

        if (angle < 0) angle = 360 + angle;
        return angle;
    }

    public double CalculateAngleBetweenDirections(Vec2 direction1, Vec2 direction2){
        double dotProduct = (direction1.x * direction2.x) + (direction1.y * direction2.y);
        double angle = Math.acos(dotProduct);
        return Double.isNaN(angle) ? 0 : angle;
    }

    public double GetMinimalDistanceFromCentroidToEdge(){
        double min = Double.POSITIVE_INFINITY;
        Vec2 centroid = AutoDscGenerator.calculateCentroid(polygonVertices);

        for(int i = 0; i < polygonVertices.length; i++){
            Vec2 currVertex = polygonVertices[i];
            Vec2 nextVertex = polygonVertices[(i+1) % polygonVertices.length];

            double length =AutoDscGenerator.calculateDistanceFromPointToLine(centroid, currVertex, nextVertex);
            min = Math.min(min, length);
        }

        return min;
    }

    public double CalculateCircumference(){
        double circumference = 0;

        for(int i = 0; i < polygonVertices.length; i++){
            Vec2 currVertex = polygonVertices[i];
            Vec2 nextVertex = polygonVertices[(i+1) % polygonVertices.length];

            circumference += AutoDscGenerator.calculateDistance(currVertex, nextVertex);
        }

        return circumference;
    }

    public double GetLongEdgeLength(){
        double longEdgeLength = 0;

        for(int i = 0; i < polygonVertices.length; i++){
            Vec2 currVertex = polygonVertices[i];
            Vec2 nextVertex = polygonVertices[(i+1) % polygonVertices.length];

            double currEdgeLength = AutoDscGenerator.calculateDistance(currVertex, nextVertex);

            if(currEdgeLength > longEdgeLength){
                longEdgeLength = currEdgeLength;
            }
        }

        return longEdgeLength;
    }

    public double GetShortEdgeLength(){
        double shortEdgeLength = Double.POSITIVE_INFINITY;

        for(int i = 0; i < polygonVertices.length; i++){
            Vec2 currVertex = polygonVertices[i];
            Vec2 nextVertex = polygonVertices[(i+1) % polygonVertices.length];

            double currEdgeLength = AutoDscGenerator.calculateDistance(currVertex, nextVertex);

            if(currEdgeLength < shortEdgeLength){
                shortEdgeLength = currEdgeLength;
            }
        }

        return shortEdgeLength;
    }
}
