package MIR.Inst;

import MIR.Entity.entity;
import MIR.Entity.register;
import MIR.Type.IRType;

public class allocaInst {
    public register reg;
    public IRType type;

    public allocaInst(register reg, IRType type) {
        this.reg = reg;
        this.type = type;
    }
}
