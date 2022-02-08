package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;
import ASM.Operand.phyreg;

public class beqzInst extends ASMInst{
    public Operand sourcereg;
    public String destlabel;

    public beqzInst(Operand sourcereg, String destlabel){
        super();
        this.sourcereg = sourcereg;
        this.destlabel = destlabel;
        this.use.add(sourcereg);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        assert flag == 1;
        assert pre == sourcereg;
        use.remove(sourcereg);
        use.add(now);
        sourcereg = now;
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
