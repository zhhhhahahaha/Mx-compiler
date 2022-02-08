package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;

public class laInst extends ASMInst{
    public Operand resreg;
    public String symbol;

    public laInst(Operand resreg, String symbol){
        super();
        this.resreg = resreg;
        this.symbol = symbol;
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
