package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

public class arrayType extends IRType{
    public int dim;
    public IRType type;

    public arrayType(int dim, IRType type){
        this.dim = dim;
        this.type = type;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
