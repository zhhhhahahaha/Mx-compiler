package MIR.Inst;

import MIR.Entity.*;
import MIR.IRVisitor;
import MIR.Operand.*;
import MIR.Type.*;

import java.util.ArrayList;

public class functioncallInst extends Inst{
    public register resreg;
    public IRType returntype;
    public String functioname;
    public ArrayList<parameter> paras = new ArrayList<>();

    public functioncallInst(register resreg, IRType returntype, String functioname){
        this.resreg = resreg;
        this.returntype = returntype;
        this.functioname = functioname;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
