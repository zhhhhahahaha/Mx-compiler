package MIR.Entity;

import MIR.Type.IRType;

public class parameter extends entity{
    public register parareg;
    public IRType paratype;

    public parameter(register parareg, IRType paratype){
        this.parareg = parareg;
        this.paratype = paratype;
    }
}
