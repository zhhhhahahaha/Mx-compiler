package MIR.Type;

import MIR.IRVisitor;


abstract public class IRType {
    abstract public void accept(IRVisitor visitor);
}
