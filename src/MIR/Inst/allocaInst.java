package MIR.Inst;

import MIR.Operand.register;
import MIR.Type.IRType;

public class allocaInst {
    public register reg;
    public IRType type;

    public allocaInst(register reg, IRType type) {
        this.reg = reg;
        this.type = type;
    }
}
