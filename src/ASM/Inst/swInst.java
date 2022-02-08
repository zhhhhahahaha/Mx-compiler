package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class swInst extends ASMInst{
    public Operand sourcereg;
    public Operand destreg;
    public int imm;

    public swInst(Operand sourcereg, Operand destreg, int imm){
        super();
        this.sourcereg = sourcereg;
        this.destreg = destreg;
        this.imm = imm;
        this.use.add(sourcereg);
        this.use.add(destreg);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        assert flag == 1;
        if(pre == sourcereg){
            use.remove(sourcereg);
            use.add(now);
            sourcereg = now;
        }
        if(pre == destreg){
            use.remove(destreg);
            use.add(now);
            destreg = now;
        }
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
