package ASM.Inst;

import ASM.ASMVisitor;

public class callInst extends ASMInst{
    public String funcname;

    public callInst(String funcname){
        this.funcname = funcname;
    }
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
