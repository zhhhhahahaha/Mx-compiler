package MIR.Operand;

import MIR.IRVisitor;

public class stringConst extends operand{
    public String strconst;

    public stringConst(String strconst){
        this.strconst = strconst;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
