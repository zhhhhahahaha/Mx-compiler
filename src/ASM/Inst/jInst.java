package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;

public class jInst extends ASMInst{
    public String destlabel;

    public jInst(String destlabel){
        super();
        this.destlabel = destlabel;
    }

    @Override
    public void change(Operand pre, Operand now, int flag){}

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
