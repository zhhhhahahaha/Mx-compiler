package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;
import ASM.Operand.phyreg;

public class cmpInst extends ASMInst{
    public enum Op{
        seqz, snez, sltz, sgtz
    }
    public Op op;
    public Operand resreg;
    public Operand sourcereg;

    public cmpInst(Op op, Operand resreg, Operand sourcereg) {
        super();
        this.op = op;
        this.resreg = resreg;
        this.sourcereg = sourcereg;
        this.def.add(resreg);
        this.use.add(sourcereg);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        if(flag == 0){
            assert pre == resreg;
            def.remove(resreg);
            def.add(now);
            resreg = now;
        }else{
            assert pre == sourcereg;
            use.remove(sourcereg);
            use.add(now);
            sourcereg = now;
        }
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
