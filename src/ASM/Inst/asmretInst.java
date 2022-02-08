package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;

public class asmretInst extends ASMInst{

    public asmretInst(){
        super();
    }

    @Override
    public void change(Operand pre, Operand now, int flag){}

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
