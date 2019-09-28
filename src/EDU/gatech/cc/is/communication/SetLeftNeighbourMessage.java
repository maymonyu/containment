package EDU.gatech.cc.is.communication;

import java.io.*;
import EDU.gatech.cc.is.util.*;

public class SetLeftNeighbourMessage extends Message
        implements Cloneable, Serializable
{
    public int val;

    public SetLeftNeighbourMessage(int id)
    {
        val = id;
    }
}
