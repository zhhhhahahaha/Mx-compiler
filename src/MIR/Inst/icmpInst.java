package MIR.Inst;

import MIR.IRVisitor;
import MIR.Operand.*;
import MIR.Type.*;

public class icmpInst extends Inst{
    public register res;
    public enum cmpType{
        slt, sle, sgt, sge,
        eq, ne
    }
    public cmpType cmptype;
    public IRType sourcetype;
    public operand left;
    public operand right;

    public icmpInst(register res, cmpType cmptype, IRType sourcetype, operand left, operand right){
        this.res = res;
        this.cmptype = cmptype;
        this.sourcetype = sourcetype;
        this.left = left;
        this.right = right;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
