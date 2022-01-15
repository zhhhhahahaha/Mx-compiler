package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

public class nullType extends IRType{

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
