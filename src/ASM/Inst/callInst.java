package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;

public class callInst extends ASMInst{
    public String funcname;

    public callInst(String funcname){
        super();
        this.funcname = funcname;
    }

    @Override
    public void change(Operand pre, Operand now, int flag){}

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
