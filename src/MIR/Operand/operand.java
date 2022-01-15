package MIR.Operand;

import MIR.IRVisitor;


abstract public class operand {
    abstract public void accept(IRVisitor visitor);
}
