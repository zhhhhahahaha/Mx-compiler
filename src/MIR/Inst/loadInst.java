package MIR.Inst;

import MIR.Operand.register;
import MIR.Type.*;

public class loadInst extends Inst{
    public register resreg;
    public IRType restype;
    public pointType sourcetype;
    public register sourcereg;

    public loadInst(register resreg, IRType restype, pointType sourcetype, register sourcereg){
        this.resreg = resreg;
        this.restype = restype;
        this.sourcetype = sourcetype;
        this.sourcereg = sourcereg;
    }
}
