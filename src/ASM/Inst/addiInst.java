package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class addiInst extends ASMInst{
    public phyreg resreg;
    public phyreg leftop;
    public int imm;

    public addiInst(phyreg resreg, phyreg leftop, int imm){
        this.resreg = resreg;
        this.leftop = leftop;
        this.imm = imm;
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
