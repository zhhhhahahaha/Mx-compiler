package MIR.Inst;

import MIR.Entity.register;
import MIR.Operand.*;
import MIR.Type.*;

public class retInst extends Inst{
    public IRType rettype;
    public operand retval;
    public register retreg;
    public boolean ret_is_operand;

    public retInst(IRType rettype, operand retval, register retreg, boolean ret_is_operand){
        this.rettype = rettype;
        this.retval = retval;
        this.retreg = retreg;
        this.ret_is_operand = ret_is_operand;
    }

}
