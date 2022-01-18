package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class swInst extends ASMInst{
    public phyreg sourcereg;
    public phyreg destreg;
    public int imm;

    public swInst(phyreg sourcereg, phyreg destreg, int imm){
        this.sourcereg = sourcereg;
        this.destreg = destreg;
        this.imm = imm;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
