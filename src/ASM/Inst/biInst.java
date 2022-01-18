package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.phyreg;

public class biInst extends ASMInst{
    public phyreg resreg;
    public phyreg leftreg;
    public phyreg rightreg;
    public enum Op{
        xor, and, or,
        add, sub,
        mul, div, rem,
        sll, srl
    }
    public Op op;

    public biInst(phyreg resreg, phyreg leftreg, phyreg rightreg, Op op){
        this.resreg = resreg;
        this.leftreg = leftreg;
        this.rightreg = rightreg;
        this.op = op;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
