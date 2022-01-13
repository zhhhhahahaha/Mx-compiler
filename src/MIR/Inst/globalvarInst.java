package MIR.Inst;

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

}
