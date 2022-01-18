package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class lwInst extends ASMInst{
    public phyreg resreg;
    public phyreg destreg;
    public int imm;

    public lwInst(phyreg resreg, phyreg destreg, int imm){
        this.resreg = resreg;
        this.destreg = destreg;
        this.imm = imm;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
