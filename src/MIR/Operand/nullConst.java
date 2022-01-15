package MIR.Operand;

import MIR.IRVisitor;


public class nullConst extends operand{

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
