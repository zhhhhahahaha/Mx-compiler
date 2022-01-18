package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.phyreg;

public class laInst extends ASMInst{
    public phyreg resreg;
    public String symbol;

    public laInst(phyreg resreg, String symbol){
        this.resreg = resreg;
        this.symbol = symbol;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
