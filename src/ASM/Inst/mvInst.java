package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class mvInst extends ASMInst {
    public phyreg resreg;
    public phyreg sourcereg;

    public mvInst(phyreg resreg, phyreg sourcereg){
        this.resreg = resreg;
        this.sourcereg = sourcereg;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
