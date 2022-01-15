package MIR.Inst;

import MIR.IRVisitor;
import MIR.Operand.*;
import MIR.Type.*;

public class globalvarInst extends Inst{
    public register var;
    public IRType type;
    public operand value;

    public globalvarInst(register var, IRType type, operand value){
        this.var = var;
        this.type = type;
        this.value = value;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
