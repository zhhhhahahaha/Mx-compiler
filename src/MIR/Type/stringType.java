package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

public class stringType extends IRType{
    public int size;

    public stringType(){
        size = 0;
    }


    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
