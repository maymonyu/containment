package EDU.gatech.cc.is.communication;

import java.io.*;
import EDU.gatech.cc.is.util.*;

public class SetRightNeighbourMessage extends Message
        implements Cloneable, Serializable
{
    public int val;

    public SetRightNeighbourMessage(int id)
    {
        val = id;
    }
}
