import java.util.Vector;
import EDU.gatech.cc.is.util.Vec2;
import java.io.*;
import EDU.gatech.cc.is.abstractrobot.*;
import EDU.gatech.cc.is.communication.*;
import java.util.Enumeration;


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

	private Enumeration messages;


	public void Configure() {
		messages = abstract_robot.getReceiveChannel();
	}

	private boolean isBehind(double x1, double x2) {
		if (side < 0) {
			return x1 < x2;
		} else {
			return x2 < x1;
		}
	}

	public int TakeStep() {
		double	result;
		Message msg = null;
		int id = abstract_robot.getID();

		long curr_time = abstract_robot.getTime();

		if(id == 0) {
			if(curr_time == 0) {

				// STEER
				result = abstract_robot.getSteerHeading(curr_time);
				abstract_robot.setSteerHeading(curr_time, 100);
				abstract_robot.setSpeed(curr_time, 0.8);
			}

			if(curr_time == 10000) {

				// STOP
				abstract_robot.setSpeed(curr_time, 0);

				// Tell the next robot to move
				try{
					abstract_robot.unicast(1, new Message());
				}
				catch (CommunicationException ex){
				}
			}

			if(curr_time == 11000){

				// Tell the next robot to Stop
				try{
					abstract_robot.unicast(1, new TerminateMessage());
				}
				catch (CommunicationException ex){
				}
			}
		}

		if (messages.hasMoreElements()) {
			System.out.println(id + ": Message");
			msg = (Message) messages.nextElement();

			if(msg instanceof TerminateMessage){
				abstract_robot.setSpeed(curr_time, 0);
			}
			else{
				abstract_robot.setSteerHeading(curr_time, 100);
				abstract_robot.setSpeed(curr_time, 0.8);
			}
		}

		// TURRET
		result = abstract_robot.getTurretHeading(curr_time);
		abstract_robot.setTurretHeading(curr_time, result);

		return CSSTAT_OK;
	}

	/**
	 * An obstacle, modelled as a left and right angle.
	 */
	class Obstacle extends Object {
		/**
		 * The left angle.
		 */
		private double left;

		/**
		 * The right angle.
		 */
		private double right;



		/**
		 * Creates an obstacle with the given boundaries.
		 *
		 * @param left left angle given in radians.
		 * @param right right anfle given in radians.
		 */
		protected Obstacle(double left, double right) {
			this.left = left;
			this.right = right;
		}

		protected Obstacle(Vec2 g, Vec2 p, double r, double ownR) {
			double cp = cross(g, p);
			double d = ownR + r;
			double t = g.t;
			if (cp >= 0.0) {
				if (p.r <= d) {
					t = p.t - 1.1 * Math.PI / 2.0;
				} else {
					t -= Math.PI / 2.0;
				}
			} else {
				if (p.r <= d) {
					t = p.t + 1.1 * Math.PI / 2.0;
				} else {
					t += Math.PI / 2.0;
				}
			}
			Vec2 v1 = new Vec2(d * Math.cos(t), d * Math.sin(t));
			if (p.r > d) {
				v1.add(p);
			}
			if (p.r <= d) {
				if (cp >= 0) {
					t = p.t + 1.1 * Math.PI / 2.0;
				} else {
					t = p.t - 1.1 * Math.PI / 2.0;
				}
			} else {
				t = g.t + Math.PI;
			}
			Vec2 v2 = new Vec2(d * Math.cos(t), d * Math.sin(t));
			if (p.r > d) {
				v2.add(p);
			}
			if (cp >= 0.0) {
				left = v2.t;
				right = v1.t;
			} else {
				left = v1.t;
				right = v2.t;
			}
		}


		/**
		 * @return the left boundary, in radians, of this obstacle.
		 */
		public double getLeft() {
			return left;
		}

		/**
		 * @return the right boundary, in radians, of this obstacle.
		 */
		public double getRight() {
			return right;
		}

		/**
		 * @param alpha an angle to check given in radians.
		 *
		 * @return <CODE>true</CODE> if this obstacle obscures the
		 * given angle; <CODE>false</CODE> otherwise.
		 */
		protected boolean obscures(double alpha) {
			if (left * right < 0.0) {
				if (left > 0.0) {
					return left > alpha && alpha > right;
				} else {
					return left > alpha || alpha > right;
				}
			} else if (left > right) {

				return left > alpha && alpha > right;
			} else {
				return left > alpha || alpha > right;
			}
		}

		/**
		 * @param o an obstacle to compare with.
		 *
		 * @return -1 if this obstacle is completely to the left of
		 * <CODE>o</CODE>, 1 if it is completely to the right, and 0
		 * otherwise.
		 */
		protected int compare(Obstacle o) {
			if (obscures(o.left) || obscures(o.right)
					|| o.obscures(left) || o.obscures(right)) {
				return 0;
			} else {
				return (angle(left, o.right) < angle(right, o.left)) ? 1 : -1;
			}
		}

		/**
		 * Merges this obstacle with the given obstacle.
		 *
		 * @param o obstacle to merge with.
		 */
		protected void merge(Obstacle o) {
			if (o.obscures(left)) {
				left = o.left;
			}
			if (o.obscures(right)) {
				right = o.right;
			}
		}

		/**
		 * @return a string representation of this object.
		 */
		public String toString() {
			return ("[" + rad2deg(left) + "," + rad2deg(right) + "]");
		}
	}

	class ObstacleList extends Object {
		private Vector obstacles;

		protected ObstacleList() {
			obstacles = new Vector();

		}

		protected int size() {
			return obstacles.size();
		}

		protected Obstacle get(int i) {
			return (Obstacle) obstacles.elementAt(i);
		}

		protected Obstacle getBoundaries() {
			return new Obstacle(get(0).getLeft(), get(size() - 1).getRight());
		}

		protected void add(Obstacle o) {
			if (obstacles.isEmpty()) {
				obstacles.addElement(o);
			} else {
				for (int i = obstacles.size() - 1; i >= 0; i--) {
					Obstacle tmp = (Obstacle) obstacles.elementAt(i);

					int c = o.compare(tmp);
					if (c < 0) {
						obstacles.insertElementAt(tmp, i + 1);
						if (i == 0) {
							obstacles.setElementAt(o, 0);
						}
					} else if (c > 0) {
						obstacles.insertElementAt(o, i + 1);
						break;
					} else {
						tmp.merge(o);
						if (i > 0) {
							obstacles.removeElement(tmp);
							o = tmp;
						}
					}
				}
			}
		}

		public String toString() {
			StringBuffer sb = new StringBuffer();
			sb.append('{');
			if (size() > 0) {
				sb.append(get(0));
				for (int i = 1; i < size(); i++) {
					sb.append(' ').append(get(i));
				}
			}
			sb.append('}');
			return sb.toString();
		}
	}
}
