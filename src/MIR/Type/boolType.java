package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

public class boolType extends IRType{
    public int size;

    public boolType(){
        size = 8;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
