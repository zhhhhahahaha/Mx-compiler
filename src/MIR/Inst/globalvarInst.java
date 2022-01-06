package MIR.Inst;

import MIR.Entity.*;
import MIR.Operand.*;
import MIR.Type.*;

public class globalvarInst extends Inst{
    register var;
    IRType type;
    operand value;

    public globalvarInst(register var, IRType type, operand value){
        this.var = var;
        this.type = type;
        this.value = value;
    }

}
