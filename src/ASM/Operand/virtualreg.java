package ASM.Operand;

import ASM.ASMVisitor;

public class virtualreg extends Operand {
    public int num;

    public virtualreg(int num){
        this.num = num;
    }

    @Override
    public void accept(ASMVisitor visitor){
        visitor.visit(this);
    }
}
