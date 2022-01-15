package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

public class intType extends IRType{
    int size;
    public intType(){
        size = 32;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
