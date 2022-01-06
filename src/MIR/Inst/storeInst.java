package MIR.Inst;

import MIR.Entity.*;
import MIR.Operand.*;
import MIR.Type.*;

public class storeInst extends Inst{
    public IRType sourcetype;
    public register sourcereg;
    public operand sourceop;
    public boolean fromreg;
    public pointType restype;
    public register resreg;

    public storeInst(IRType sourcteype, register sourcereg, operand sourceop, boolean fromreg, pointType restype, register resreg){
        this.sourcetype = sourcteype;
        this.sourcereg = sourcereg;
        this.sourceop = sourceop;
        this.fromreg = fromreg;
        this.restype = restype;
        this.resreg = resreg;
    }
}
