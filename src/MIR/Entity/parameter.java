package MIR.Entity;

import MIR.IRVisitor;
import MIR.Operand.*;
import MIR.Type.IRType;

import java.io.PrintStream;

public class parameter extends entity{
    public operand parareg;
    public IRType paratype;

    public parameter(operand parareg, IRType paratype){
        this.parareg = parareg;
        this.paratype = paratype;
    }

    public void accept(IRVisitor visitor){
        visitor.visit(this);
    }
}
