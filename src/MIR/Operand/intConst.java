package MIR.Operand;

import MIR.IRVisitor;

import java.io.PrintStream;

public class intConst extends operand{
    public int value;

    public intConst(int value){
        this.value = value;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
