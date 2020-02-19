package TBSim;

import EDU.gatech.cc.is.util.Vec2;

public class PolygonStats {
    public Vec2[] polygonVertices;

    public double area;
    public double circumference;
    public double longEdgeLength;
    public double shortEdgeLength;
    public double ratioBetweenLongEdgeToShortEdge;

    public PolygonStats(Vec2[] polygonVertices){
        this.polygonVertices = polygonVertices;

        area = AutoDscGenerator.calculatePolygonArea(polygonVertices);
        circumference = CalculateCircumference();
        longEdgeLength = GetLongEdgeLength();
        shortEdgeLength = GetShortEdgeLength();
        ratioBetweenLongEdgeToShortEdge = longEdgeLength / shortEdgeLength;
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
