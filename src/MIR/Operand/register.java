package MIR.Operand;

import MIR.Entity.entity;
import MIR.IRVisitor;


public class register extends operand {
    public String name;

    public register(String name){
        this.name = name;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
