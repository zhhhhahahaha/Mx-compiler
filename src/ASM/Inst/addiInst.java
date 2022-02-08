package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class addiInst extends ASMInst{
    public Operand resreg;
    public Operand leftop;
    public int imm;

    public addiInst(Operand resreg, Operand leftop, int imm){
        super();
        this.resreg = resreg;
        this.leftop = leftop;
        this.imm = imm;
        this.def.add(resreg);
        this.use.add(leftop);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        if(flag==0){
            assert pre == resreg;
            def.remove(resreg);
            def.add(now);
            resreg = now;
        }else{
            assert pre == leftop;
            use.remove(leftop);
            use.add(now);
            leftop = now;
        }
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
