package ASM.Inst;

import ASM.ASMVisitor;

public class jInst extends ASMInst{
    public String destlabel;

    public jInst(String destlabel){
        this.destlabel = destlabel;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
