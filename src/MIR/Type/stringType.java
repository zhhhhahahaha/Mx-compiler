package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

public class stringType extends IRType{

    public stringType(){
    }


    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
