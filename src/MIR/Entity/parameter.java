package MIR.Entity;

import MIR.Operand.*;
import MIR.Type.IRType;

public class parameter extends entity{
    public operand parareg;
    public IRType paratype;

    public parameter(operand parareg, IRType paratype){
        this.parareg = parareg;
        this.paratype = paratype;
    }
}
