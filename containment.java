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

	private double CalculateSteerHeading(long time){
//		System.out.println("CalculateSteerHeading");

		int rightNeighbourId = GetRightNeighbourId();

		Vec2 reachingPoint = abstract_robot.GetTopPoint(time, rightNeighbourId);
		System.out.println(id + " - reachingPoint = " + reachingPoint);

		Vec2 position = abstract_robot.getPosition(time);
//		System.out.println("position: " + position.x + " " + position.y);

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
		if(position.x > reachingPoint.x){
			incline = -1 * incline;
		}
//		else {
//			incline = (position.y - reachingPoint.y) / (position.x - reachingPoint.x);
//		}
//		System.out.println("incline: " + incline);

		double angle = Math.atan(incline);
//		System.out.println("angle: " + angle);

		return angle;
	}

	private void SetSteerHeading(long time){
		System.out.println(id + ": SetSteerHeading");

		steerHeading = CalculateSteerHeading(time);
		abstract_robot.setSteerHeading(0L, steerHeading);

		System.out.println(id + " - steerHeading = " + steerHeading);

		waitingForSteerHeading = true;
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

	private boolean ShouldStopMoving(long time){
//		System.out.println("ShouldStopMoving");

		Vec2 leftFovPoint = abstract_robot.GetLeftPoint(time, id);
		Vec2 rightFovPoint = abstract_robot.GetRightPoint(time, id);
//
//		System.out.println("left point: x = " + leftFovPoint.x + ", y = " + leftFovPoint.y);
//		System.out.println("right point: x = " + rightFovPoint.x + ", y = " + rightFovPoint.y);

		int leftNeighbourId = GetLeftNeighbourId();
		int rightNeighbourId = GetRightNeighbourId();

		Circle2 leftNeighbourFOV = abstract_robot.GetFOV(leftNeighbourId);
		Circle2 rightNeighbourFOV= abstract_robot.GetFOV(rightNeighbourId);

		boolean isWithinLeftNeighbour = IsPointWithinCircle(leftFovPoint, leftNeighbourFOV);
		boolean isWithinRightNeighbour = IsPointWithinCircle(rightFovPoint, rightNeighbourFOV);

		boolean shouldStop = !isWithinLeftNeighbour || !isWithinRightNeighbour;

//		System.out.println("isWithinLeftNeighbour: " + isWithinLeftNeighbour);
//		System.out.println("isWithinRightNeighbour: " + isWithinRightNeighbour);

		return shouldStop;
	}

	private boolean IsSteerReady(long time){
		double currentSteerHeading = abstract_robot.getSteerHeading(time);

		return currentSteerHeading == steerHeading;
	}

	private boolean IsFirstToRun(long time){
		return time == 0 && id == 0;
	}

	private boolean IsMyTurnToMove(){
		if (messages.hasMoreElements()) {
			System.out.println("Yes! " + id);

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
		double result;
		Message message;
		long curr_time = abstract_robot.getTime();

		// STEER
//		result = abstract_robot.getSteerHeading(curr_time);
//		abstract_robot.setSteerHeading(curr_time, result);

		// TURRET
		result = abstract_robot.getTurretHeading(curr_time);
		abstract_robot.setTurretHeading(curr_time, result);

		if(waitingForSteerHeading){
//			System.out.println(id + ": waitingForSteerHeading");

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


//		if(curr_time > 4500)
//		{
//			abstract_robot.setSpeed(curr_time, 0);
//		}

//		if(curr_time == 0 && id == 0) {
//
//			// STEER
//			result = abstract_robot.getSteerHeading(curr_time);
//			abstract_robot.setSteerHeading(curr_time, Math.PI);
//			abstract_robot.setSpeed(curr_time, 0.8);
//
//			if(curr_time == 10000) {
//
//				// STOP
//				abstract_robot.setSpeed(curr_time, 0);
//
//				// Tell the next robot to move
//				try{
//					abstract_robot.unicast(1, new Message());
//				}
//				catch (CommunicationException ex){
//				}
//			}
//
//			if(curr_time == 11000){
//
//				// Tell the next robot to Stop
//				try{
//					abstract_robot.unicast(1, new TerminateMessage());
//				}
//				catch (CommunicationException ex){
//				}
//			}
//		}
//
//		if (messages.hasMoreElements()) {
//			System.out.println(id + ": Message");
//			message = (Message) messages.nextElement();
//
//			if(message instanceof TerminateMessage){
//				abstract_robot.setSpeed(curr_time, 0);
//			}
//			else{
//				abstract_robot.setSteerHeading(curr_time, 0);
//				abstract_robot.setSpeed(curr_time, 0.8);
//			}
//		}

		return CSSTAT_OK;
	}
}
