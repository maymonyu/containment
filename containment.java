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



/**
 * A homogeneous robot soccer team.
 *

 * @author H&aring;kan L. Younes
 */
public class containment extends ControlSystemMFN150 {


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
	boolean isMoving;
	boolean waitingForSteerHeading;
	int numberOfRobots;
	double steerHeading;
	private Enumeration messages;


	public void Configure() {
		isMoving = false;
		waitingForSteerHeading = false;
		messages = abstract_robot.getReceiveChannel();
		id = abstract_robot.getID();
		numberOfRobots = abstract_robot.GetNumberOfRobots();
		steerHeading = 0;
	}

	private boolean isBehind(double x1, double x2) {
		if (side < 0) {
			return x1 < x2;
		} else {
			return x2 < x1;
		}
	}

	private int GetLeftNeighbourId(){
		int robotId = (id - 1) % numberOfRobots;

		if (robotId == -1)
			return numberOfRobots - 1;

		return robotId;
	}

	private int GetRightNeighbourId(){
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

		int rightNeighbourId = GetRightNeighbourId();

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


	private boolean ShouldStopMoving(long time){
//		System.out.println("ShouldStopMoving");

//		Vec2 leftFovPoint = abstract_robot.GetLeftPoint(time, id);
//		Vec2 rightFovPoint = abstract_robot.GetRightPoint(time, id);

//		System.out.println("left point: x = " + leftFovPoint.x + ", y = " + leftFovPoint.y);
//		System.out.println("right point: x = " + rightFovPoint.x + ", y = " + rightFovPoint.y);

		int leftNeighbourId = GetLeftNeighbourId();
		int rightNeighbourId = GetRightNeighbourId();

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
		return time == 0 && id == 0;
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
		int rightNeighbourId = GetRightNeighbourId();

		try{
			abstract_robot.unicast(rightNeighbourId, new Message());
		}
		catch (CommunicationException ex){
		}
	}


	public int TakeStep() {
//		System.out.println("Yes! " + id);

		double result;
		Message message;
		long curr_time = abstract_robot.getTime();

		// TURRET
		result = abstract_robot.getTurretHeading(curr_time);
		abstract_robot.setTurretHeading(curr_time, result);

		if(waitingForSteerHeading){
			if(IsSteerReady(curr_time)){
				waitingForSteerHeading = false;
				StartMoving(curr_time);
			}

			return CSSTAT_OK;
		}

		if (IsFirstToRun(curr_time)) {
			SetSteerHeading(curr_time);
		}

		else if (IsMyTurnToMove()) {
			SetSteerHeading(curr_time);
		}

		else if (isMoving && ShouldStopMoving(curr_time)){
			StopMoving(curr_time);
			TellNextRobotToStartMoving();
		}

		return CSSTAT_OK;
	}
}
