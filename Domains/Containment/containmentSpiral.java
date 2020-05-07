
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

import java.io.FileReader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.Writer;

import java.util.List;
import java.util.ArrayList;
import java.util.stream.IntStream;

/**
 * A homogeneous robot soccer team.
 *

 * @author H&aring;kan L. Younes
 */
public class containmentSpiral extends ControlSystemMFN150 {


	/**
	 * @return the cross product of the two given vectors.
	 */
	protected static double cross(Vec2 v, Vec2 u) {
		return v.x * u.y - v.y * u.x;
	}

	/**
	 * @return the dot product of the two given vectors.
	 */

	protected static double dot(Vec2 v, Vec2 u) {
		return v.x * u.x + v.y * u.y;
	}


	/**
	 * @return the angle, in the range 0 through <I>pi</I>, between
	 * the two given vectors.
	 */
	protected static double angle(Vec2 v, Vec2 u) {
		return Math.acos(dot(v, u) / (v.r * u.r));
	}


	/**
	 * @return the angle, in the range 0 through <I>pi</I>, between
	 * the two given angles.
	 */
	protected static double angle(double alpha, double beta) {
		return Math.acos(Math.cos(alpha - beta));
	}

	/**
	 * @return the given angle converted to degrees.
	 */
	protected static int rad2deg(double alpha) {
		return (int)(180.0 * alpha / Math.PI);
	}


	private int side;
	private double forward_angle;
	private double goalie_x;
	private Vec2 offensive_pos1, offensive_pos2;

	int id;
	int leftNeighbourId;
	int rightNeighbourId;

	boolean isRedundant;
	boolean isMyTurn;
	boolean isMoving;
	boolean isReversing;
	boolean isDoneReversing;
	boolean waitingForSteerHeading;
	boolean isEven;
	boolean isOdd;
	boolean isFirstOnEdge;
	boolean isLastOnEdge;
	Vec2 destinationPoint;
	double directionToDestinationPoint;
	Vec2 currentDestinationPoint;
	double directionToCurrentDestinationPoint;
	int currentVertexIndex;
	List<Double> edgesDirectionAngles;
	List<Double> anglesBetweenEdges;
	List<Vec2> polygonVerticesByOrder;
	int round;
	Vec2 roundStartingLocation;
	double originalSteerHeading;
	double visionRange;
	Vec2 centroid;
	boolean isHeadingToFinalPoint;

	int numberOfRobots;
	int indexOnEdge;
	double steerHeading;
	private Enumeration messages;

	private double savedTime;

	Vec2 lastPosition;
	double r_x;

	boolean isDead;

	public void Configure() {
		isRedundant = false;
		isMyTurn = false;
		isMoving = false;
		isReversing = false;
		isDoneReversing = false;
		waitingForSteerHeading = false;

		messages = abstract_robot.getReceiveChannel();
		numberOfRobots = abstract_robot.GetNumberOfRobots();
		indexOnEdge = abstract_robot.GetIndexOnEdge();
		steerHeading = 0;

		isFirstOnEdge = indexOnEdge == 1;
		isEven = indexOnEdge % 2 == 0;
		isOdd = !isEven;
		isLastOnEdge = abstract_robot.GetIsLastOnEdge();
		destinationPoint = abstract_robot.GetDestinationPoint();

		id = abstract_robot.getID();
		leftNeighbourId = GetInitialLeftNeighbourId();
		rightNeighbourId = GetInitialRightNeighbourId();

		lastPosition = abstract_robot.getPosition();
		r_x = abstract_robot.Calculate_r_x();

		visionRange = abstract_robot.GetVisionRange();

//		directionToDestinationPoint = getDirectionAngleOf2Points(lastPosition, destinationPoint);
		edgesDirectionAngles = abstract_robot.CollectEdgesDirectionAngles();
		anglesBetweenEdges = CalculateAnglesBetweenEdges(edgesDirectionAngles);

		polygonVerticesByOrder = abstract_robot.CollectAllPolygonVertices();
		currentVertexIndex = 0;
		SetCurrentDestinationPoint(currentVertexIndex);
		roundStartingLocation = abstract_robot.getPosition();

		Vec2 [] polygonVerticesByOrderArray = new Vec2[polygonVerticesByOrder.size()];
		polygonVerticesByOrderArray = polygonVerticesByOrder.toArray(polygonVerticesByOrderArray);

		centroid = calculateCentroid(polygonVerticesByOrderArray);

		originalSteerHeading = abstract_robot.getSteerHeading(0);

		isHeadingToFinalPoint = false;

		savedTime = 0;

		isDead = abstract_robot.isDead();
	}

	public Vec2 calculateCentroid(Vec2 [] polygonVertices){
		double centroidX = 0, centroidY = 0;

		for(Vec2 vertex : polygonVertices) {
			centroidX += vertex.x;
			centroidY += vertex.y;
		}

		return new Vec2(centroidX / polygonVertices.length, centroidY / polygonVertices.length);
	}

	private void SetLeftNeighbourId(int leftNeighbourId){
		this.leftNeighbourId = leftNeighbourId;
	}

	private void SetRightNeighbourId(int rightNeighbourId){
		this.rightNeighbourId = rightNeighbourId;
	}

	private boolean isBehind(double x1, double x2) {
		if (side < 0) {
			return x1 < x2;
		} else {
			return x2 < x1;
		}
	}

	private int GetInitialLeftNeighbourId(){
		int robotId = (id - 1) % numberOfRobots;

		if (robotId == -1)
			return numberOfRobots - 1;

		return robotId;
	}

	private int GetInitialRightNeighbourId(){
		return (id + 1) % numberOfRobots;
	}

	private double getDirectionAngleOf2Points(Vec2 from, Vec2 to){
		double incline = 0;

		if (from.x == to.x){
			if (from.y < to.y){
				return Math.PI / 2;
			}
			else{
				return -Math.PI / 2;
			}
		}

		incline = (to.y - from.y) / (to.x - from.x);
//		System.out.println("incline: " + incline);

		double angle = Math.atan(incline);

		if(from.x > to.x){
			angle = angle + Math.PI;
		}

//		System.out.println("angle: " + angle);

		return angle;
	}

	private double CalculateSteerHeading(long time){
//		System.out.println("CalculateSteerHeading");

		int rightNeighbourId = GetInitialRightNeighbourId();

		Vec2 reachingPoint = abstract_robot.GetTopPoint(time, rightNeighbourId);
//		System.out.println(id + " - reachingPoint = " + reachingPoint);

		Vec2 position = abstract_robot.getPosition(time);
//		System.out.println("position: " + position.x + " " + position.y);

		return getDirectionAngleOf2Points(position, reachingPoint);
	}

	private void SetSteerHeading(long time){
////		System.out.println(id + ": SetSteerHeading");
//
//		steerHeading = CalculateSteerHeading(time);
//		abstract_robot.setSteerHeading(0L, steerHeading);
//
////		System.out.println(id + " - steerHeading = " + steerHeading);
//
//		waitingForSteerHeading = true;
	}

	private void StartMoving(long time){
		isMoving = true;
		abstract_robot.setSpeed(time, 1.0);
	}

	private void StopMoving(long time){
		isMoving = false;
		abstract_robot.setSpeed(time, 0);
	}

	private boolean IsPointWithinCircle(Vec2 point, Circle2 circle){
		double dx = point.x - circle.centre.x;
		double dy = point.y - circle.centre.y;

		double distance = Math.sqrt(dx * dx + dy * dy);

		return distance < circle.radius;
	}

	private boolean areCirclesCollide(Circle2 first, Circle2 second){
		Vec2 firstCentre = first.centre;
		Vec2 secondCentre = second.centre;

		double xDif = firstCentre.x - secondCentre.x;
		double yDif = firstCentre.y - secondCentre.y;

		double distanceSquared = xDif * xDif + yDif * yDif;

		return distanceSquared <= Math.pow(first.radius + second.radius, 2);
	}

	private boolean isPointWithinFOV(Vec2 intersectionPoint, FOV fov){
		double directionFromFovToIntersectionPoint = getDirectionAngleOf2Points(fov.circle.centre, intersectionPoint);
		directionFromFovToIntersectionPoint = normalizeRadian(directionFromFovToIntersectionPoint);

		double fovTurrerHeading = normalizeRadian(fov.turretHeading);
		double halfPI = Math.PI / 2;

		double leftTurretAngle = normalizeRadian(fovTurrerHeading + halfPI);
		double rightTurretAngle = normalizeRadian(fovTurrerHeading - halfPI);

//		if(id == 0){
//			System.out.println("Left TurretHeading: " + leftTurretAngle);
//			System.out.println("Right TurretHeading: " + rightTurretAngle);
//			System.out.println("FOV directionFromFovToIntersectionPoint: " + directionFromFovToIntersectionPoint);
//		 }

		if (fovTurrerHeading <= halfPI || fovTurrerHeading >= 3 * halfPI){
			return (directionFromFovToIntersectionPoint >= 0 && directionFromFovToIntersectionPoint <= leftTurretAngle)
					|| directionFromFovToIntersectionPoint >= rightTurretAngle;
		}

		return directionFromFovToIntersectionPoint <= leftTurretAngle
				&& directionFromFovToIntersectionPoint >= rightTurretAngle;
	}

	private boolean isPointWithinFOVs(Vec2 intersectionPoint, FOV first, FOV second){
		return isPointWithinFOV(intersectionPoint, first)
				&& isPointWithinFOV(intersectionPoint, second);
	}

	private boolean areSemiCirclesCollide(FOV first, FOV second){
		Circle firstCircle = new Circle(first.circle);
		Circle secondCircle = new Circle(second.circle);

		CircleCircleIntersection circleCircleIntersection = new CircleCircleIntersection(firstCircle, secondCircle);
		Vector2 [] intersectionPoints = circleCircleIntersection.getIntersectionPoints();

		for (int i=0; i<intersectionPoints.length; i++){
			Vector2 intersectionPoint = intersectionPoints[i];
			Vec2 intersectionPointVec2 = new Vec2(intersectionPoint.x, intersectionPoint.y);

			if (isPointWithinFOVs(intersectionPointVec2, first, second)){
				return true;
			}
		}

		return false;
	}


	private boolean IsOpenArea(long time){
//		System.out.println("IsOpenArea");

//		Vec2 leftFovPoint = abstract_robot.GetLeftPoint(time, id);
//		Vec2 rightFovPoint = abstract_robot.GetRightPoint(time, id);

//		System.out.println("left point: x = " + leftFovPoint.x + ", y = " + leftFovPoint.y);
//		System.out.println("right point: x = " + rightFovPoint.x + ", y = " + rightFovPoint.y);

//		int leftNeighbourId = GetInitialLeftNeighbourId();
//		int rightNeighbourId = GetInitialRightNeighbourId();

		Circle2 robotFOVCircle = abstract_robot.GetFOV(id);
		double turretHeading = abstract_robot.getTurretHeadingOfRobot(id);
		FOV robotFOV = new FOV(robotFOVCircle, turretHeading);

		Circle2 leftNeighbourFOVCircle = abstract_robot.GetFOV(leftNeighbourId);
		double leftNeighbourTurret = abstract_robot.getTurretHeadingOfRobot(leftNeighbourId);
		FOV leftNeighbourFOV = new FOV(leftNeighbourFOVCircle, leftNeighbourTurret);

		Circle2 rightNeighbourFOVCircle = abstract_robot.GetFOV(rightNeighbourId);
		double rightNeighbourTurret = abstract_robot.getTurretHeadingOfRobot(rightNeighbourId);
		FOV rightNeighbourFOV = new FOV(rightNeighbourFOVCircle, rightNeighbourTurret);

//		boolean isWithinLeftNeighbour = IsPointWithinCircle(leftFovPoint, leftNeighbourFOV);
//		boolean isWithinRightNeighbour = IsPointWithinCircle(rightFovPoint, rightNeighbourFOV);

		boolean isFovCollideWithLeftNeighbour = areSemiCirclesCollide(robotFOV, leftNeighbourFOV);
		boolean isFovCollideWithRightNeighbour = areSemiCirclesCollide(rightNeighbourFOV, robotFOV);

		boolean shouldStop = !isFovCollideWithLeftNeighbour || !isFovCollideWithRightNeighbour;

//		boolean shouldStop = !isWithinLeftNeighbour || !isWithinRightNeighbour;

//		if(id == 0) {
//			System.out.println("isFovCollideWithLeftNeighbour: " + isFovCollideWithLeftNeighbour);
//			System.out.println("isFovCollideWithRightNeighbour: " + isFovCollideWithRightNeighbour);
//		}

//		if (id == 4) System.out.println("shoudStopMoving: " + shouldStop);
		return shouldStop;
	}

	private double normalizeRadian(double radian){
		double t = radian;
		double PI2	= 2.0 * Math.PI;

		while (t > PI2) t = t - PI2;
		while (t < 0)   t = t + PI2;

		return t;
	}

	private boolean IsSteerReady(long time){
		double currentSteerHeading = abstract_robot.getSteerHeading(time);
//		System.out.println(id + ": " + currentSteerHeading + " -> " + steerHeading);
//		System.out.println(id + ": " + currentSteerHeading % Math.PI + " -> " + steerHeading % Math.PI);

		double adjustedSteerHeading = steerHeading;
		if(steerHeading < 0){
			adjustedSteerHeading = Math.PI + steerHeading;
		}

		double diff = currentSteerHeading % Math.PI - adjustedSteerHeading % Math.PI;

		double epsilon = 0.00000001;

		return Math.abs(diff) < epsilon;
	}

	private boolean IsFirstToRun(long time){
		return isEven && time == 0;
	}

	private boolean IsMyTurnToMove(){
		if (messages.hasMoreElements()) {
//			System.out.println("Yes! " + id);

			Message message = (Message) messages.nextElement();
			return true;
		}

		return false;
	}

	private void TellNextRobotToStartMoving(){
		isMyTurn = false;

		int nextRobotToRun = GetInitialRightNeighbourId();

		try{
			abstract_robot.unicast(nextRobotToRun, new ChangeTurnMessage());
		}
		catch (CommunicationException ex){
		}
	}


	private void TellNeighbourstToStartMoving(){
		isMyTurn = false;

		int nextNeighbour = GetInitialRightNeighbourId();
		int previousNeighbour = GetInitialLeftNeighbourId();

		try{
			abstract_robot.unicast(nextNeighbour, new ChangeTurnMessage());
			abstract_robot.unicast(previousNeighbour, new ChangeTurnMessage());
		}
		catch (CommunicationException ex){
		}
	}

	private void SendNewNeighboursMessages(){
		try{
			abstract_robot.unicast(leftNeighbourId, new SetRightNeighbourMessage(rightNeighbourId));
			abstract_robot.unicast(rightNeighbourId, new SetLeftNeighbourMessage(leftNeighbourId));
		}
		catch (CommunicationException ex){
		}
	}

	private Circle GetRobotCircle(int robotId){
		Circle2 robotFov = abstract_robot.GetFOV(robotId);
		return new Circle(robotFov);
	}

	private boolean AreNeighboursCollide(){
		Circle leftNeighbourCircle = GetRobotCircle(leftNeighbourId);
		Circle rightNeighbourCircle = GetRobotCircle(rightNeighbourId);

		CircleCircleIntersection circleCircleIntersection = new CircleCircleIntersection(leftNeighbourCircle, rightNeighbourCircle);
		int intersectionPointsCount = circleCircleIntersection.type.getIntersectionPointCount();

		return intersectionPointsCount > 0;
	}

	private void CheckMessages(){
		while (messages.hasMoreElements()) {
			Message message = (Message) messages.nextElement();

			if (message instanceof ChangeTurnMessage) {
				isMyTurn = true;
			}

			if (message instanceof SetLeftNeighbourMessage) {
				int newNeighbourId = ((SetLeftNeighbourMessage) message).val;
				SetLeftNeighbourId(newNeighbourId);
			}

			if (message instanceof SetRightNeighbourMessage) {
				int newNeighbourId = ((SetRightNeighbourMessage) message).val;
				SetRightNeighbourId(newNeighbourId);
			}
		}
	}

	private double calculateDistance(Vec2 point1, Vec2 point2){
		double dx = point1.x- point2.x;
		double dy = point1.y - point2.y;

		return Math.sqrt(dx * dx + dy * dy);
	}

	private boolean isLocustInsideFov(Vec2 position){
		Circle2 robotFOVCircle = abstract_robot.GetFOV(id);

		return IsPointWithinCircle(position, robotFOVCircle);
	}

	private void EliminateLocust(){
		SimulatedObject[] locust = abstract_robot.getLivingLocust();

		for(int i = 0; i < locust.length; i++){
			SimulatedObject currLocust = locust[i];
			Vec2 currLocustPosition = currLocust.getPosition();

			if(isLocustInsideFov(currLocustPosition)){
				currLocust.putDown(currLocustPosition);
			}
		}
	}

	private void SetCurrentDestinationPoint(int nextVertexIndex){
		currentVertexIndex = nextVertexIndex;
		currentDestinationPoint = polygonVerticesByOrder.get(nextVertexIndex);
		directionToCurrentDestinationPoint = getDirectionAngleOf2Points(lastPosition, currentDestinationPoint);
	}

	public static double calculateRadianIncline(Vec2 position, Vec2 reachingPoint){
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

	public static Vec2 GetPointByDistanceAndRadians(double distance, double radians, Vec2 position){
		double x = distance * Math.cos(radians) + position.x;
		double y = distance * Math.sin(radians) + position.y;

//		System.out.println("x = " + x + ", y = " + y);

		return new Vec2(x, y);
	}

	private void MinimizePolygon(){
		List<Vec2> newVertices = new ArrayList<>();

		for(int i = 0; i < polygonVerticesByOrder.size(); i++) {
//            double angleDirection = anglesBetweenEdges.get(i);
			Vec2 vertex = polygonVerticesByOrder.get(i);
			double angleDirection = calculateRadianIncline(vertex, centroid);

//            Vec2 newVertex = GetPointByDistanceAndRadians(visionRange * 2, angleDirection, vertex);
			Vec2 newVertex = GetPointByDistanceAndRadians(visionRange * 2, angleDirection, vertex);
			newVertices.add(newVertex);
		}

		polygonVerticesByOrder = newVertices;
	}

	private List<Double> CalculateAnglesBetweenEdges(List<Double> edgesDirectionAngles){
		List<Double> anglesBetweenEdges = new ArrayList<>();
		int numberOfEdges = edgesDirectionAngles.size();

		for(int i = 0; i < numberOfEdges; i++){
//	        int previousVertexIndex = (i + numberOfEdges - 1) % numberOfEdges;
			int nextVertexIndex = (i + 1) % numberOfEdges;

			double angleBetweenEdges = (edgesDirectionAngles.get(i) + edgesDirectionAngles.get(nextVertexIndex)) / 2;
			anglesBetweenEdges.add(angleBetweenEdges);
		}

		return anglesBetweenEdges;
	}

	private void HandleRoundEnd(){
		round ++;
		MinimizePolygon();
//        roundStartingLocation = polygonVerticesByOrder.get(polygonVerticesByOrder.size() - 1);
	}

	public int TakeStep() {
		double result;
		Message message;
		long curr_time = abstract_robot.getTime();
		lastPosition = abstract_robot.getPosition();

		// TURRET
		result = abstract_robot.getTurretHeading(curr_time);
		abstract_robot.setTurretHeading(curr_time, result);

		CheckMessages();
		EliminateLocust();

		if(isDead) return CSSTAT_OK;

		if(round == 0){
			HandleRoundEnd();
		}

		if(calculateDistance(lastPosition, centroid) < 5){
			isHeadingToFinalPoint = true;
			directionToDestinationPoint = getDirectionAngleOf2Points(lastPosition, destinationPoint);

			abstract_robot.setSteerHeading(0L, directionToDestinationPoint);
			StartMoving(curr_time);
		}

		if(isHeadingToFinalPoint) {
			if (calculateDistance(lastPosition, destinationPoint) < 0.4) {
				StopMoving(curr_time);
				return CSSTAT_OK;
			}
		}

		else {
			if (calculateDistance(lastPosition, currentDestinationPoint) < 0.7) {
				HandleRoundEnd();

				int nextVertexIndex = (currentVertexIndex + 1) % polygonVerticesByOrder.size();
				SetCurrentDestinationPoint(nextVertexIndex);

				abstract_robot.setSteerHeading(0L, directionToCurrentDestinationPoint);
				StartMoving(curr_time);
			}
			else {
				abstract_robot.setSteerHeading(0L, directionToCurrentDestinationPoint);
				StartMoving(curr_time);
			}
		}


//		else {
//		    StopMoving(0L);
//			if (id == 0) {
//				System.out.println("time: " + curr_time);
//			}
//
//			if (IsFirstToRun(curr_time)) {
//				isMyTurn = true;
//				StartMoving(curr_time);
//
//				savedTime = curr_time;
//			} else if (isMoving) {
//				Vec2 currPosition = abstract_robot.getPosition();
//				if (calculateDistance(currPosition, lastPosition) >= r_x) {
//					StopMoving(curr_time);
//					TellNeighbourstToStartMoving();
//
//					isMyTurn = false;
//					lastPosition = currPosition;
//
//					//				if(id == 1){
//					//					System.out.println("saved time: " + savedTime);
//					//					System.out.println("r_x: " + r_x);
//					//					System.out.println("time to pass r_x distance: " + (curr_time - savedTime));
//					//				}
//				}
//			} else if (isMyTurn) {
//				StartMoving(curr_time);
//				savedTime = curr_time;
//			}
//
//
//			if (id == numberOfRobots - 1 && !isMoving) {
//				int numOfRedundants = abstract_robot.CalculateRedundantRobots();
//			}
//		}

		return CSSTAT_OK;
	}
}
