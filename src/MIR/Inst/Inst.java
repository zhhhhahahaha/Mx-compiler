package MIR.Inst;

import MIR.IRVisitor;

abstract public class Inst {
    abstract public void accept(IRVisitor visitor);
}
