
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

public final class FOV {

    public final Circle2 circle;
    public final double turretHeading;

    public FOV(Circle2 c, double turret) {
        this.circle = c;
        this.turretHeading = turret;
    }

}
