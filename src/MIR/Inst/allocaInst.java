package MIR.Inst;

import MIR.IRVisitor;
import MIR.Operand.register;
import MIR.Type.IRType;

public class allocaInst extends Inst{
    public register reg;
    public IRType type;

    public allocaInst(register reg, IRType type) {
        this.reg = reg;
        this.type = type;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
