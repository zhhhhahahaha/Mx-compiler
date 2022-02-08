package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.*;

public class liInst extends ASMInst{
    public Operand resreg;
    public int imm;

    public liInst(Operand resreg, int imm){
        super();
        this.resreg = resreg;
        this.imm = imm;
        this.def.add(resreg);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        assert flag == 0;
        assert pre == resreg;
        def.remove(resreg);
        def.add(now);
        resreg = now;
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
