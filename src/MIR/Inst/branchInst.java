package MIR.Inst;

import MIR.Entity.*;
import MIR.IRVisitor;
import MIR.Operand.register;

public class branchInst extends Inst{
    public label truedest;
    public label falsedest;
    public boolean hascondition;
    public register conreg;



    public branchInst(label truedest, label falsedest, boolean hascondition, register conreg){
        this.truedest = truedest;
        this.falsedest = falsedest;
        this.hascondition = hascondition;
        this.conreg = conreg;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
