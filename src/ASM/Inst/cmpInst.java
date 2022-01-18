package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.phyreg;

public class cmpInst extends ASMInst{
    public enum Op{
        seqz, snez, sltz, sgtz
    }
    public Op op;
    public phyreg resreg;
    public phyreg sourcereg;

    public cmpInst(Op op, phyreg resreg, phyreg sourcereg) {
        this.op = op;
        this.resreg = resreg;
        this.sourcereg = sourcereg;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
