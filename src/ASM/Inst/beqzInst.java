package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.phyreg;

public class beqzInst extends ASMInst{
    public phyreg sourcereg;
    public String destlabel;

    public beqzInst(phyreg sourcereg, String destlabel){
        this.sourcereg = sourcereg;
        this.destlabel = destlabel;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
