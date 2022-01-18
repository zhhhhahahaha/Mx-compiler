package ASM.Inst;

import ASM.ASMVisitor;

public class asmretInst extends ASMInst{
    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
