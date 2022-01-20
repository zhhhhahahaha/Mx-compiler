package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class liInst extends ASMInst{
    public phyreg resreg;
    public int imm;

    public liInst(phyreg resreg, int imm){
        this.resreg = resreg;
        this.imm = imm;
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
