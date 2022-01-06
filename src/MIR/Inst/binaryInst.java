package MIR.Inst;

import MIR.Entity.*;
import MIR.Operand.*;
import MIR.Type.*;

public class binaryInst extends Inst{
    public enum binaryop{
        xor,   //
        add, sub

    }
    public binaryop op;
    public IRType sourcetype;
    public register leftsourcereg;
    public operand leftoperand;
    boolean left_is_reg;
    public register rightsourcereg;
    public operand rightoperand;
    boolean right_is_reg;
    public register resreg;

    public binaryInst(binaryop op, IRType sourcetype, register leftsourcereg, operand leftoperand, boolean left_is_reg,
                      register rightsourcereg, operand rightoperand, boolean right_is_reg, register resreg){
        this.op = op;
        this.sourcetype = sourcetype;
        this.leftsourcereg = leftsourcereg;
        this.leftoperand = leftoperand;
        this.left_is_reg = left_is_reg;
        this.rightsourcereg = rightsourcereg;
        this.rightoperand = rightoperand;
        this.right_is_reg = right_is_reg;
        this.resreg = resreg;
    }
}
