package MIR.Operand;

import MIR.IRVisitor;

import java.io.PrintStream;

public class boolConst extends operand{
    public boolean value;

    public boolConst(boolean value){
        this.value = value;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
