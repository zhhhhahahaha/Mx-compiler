package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class lwInst extends ASMInst{
    public Operand resreg;
    public Operand destreg;
    public int imm;

    public lwInst(Operand resreg, Operand destreg, int imm){
        super();
        this.resreg = resreg;
        this.destreg = destreg;
        this.imm = imm;
        this.def.add(resreg);
        this.use.add(destreg);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        if(flag == 0){
            assert pre == resreg;
            def.remove(resreg);
            def.add(now);
            resreg = now;
        }else{
            assert pre == destreg;
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
