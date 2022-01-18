package ASM.Operand;
//regname
//zero, ra, sp, gp, tp, to, t1, t2,
//s0, s1,
//a0, a1, a2, a3, a4, a5, a6, a7,
//s2, s3, s4, s5, s6, s7, s8, s9, s10, s11,
//t3, t4, t5, t6,

import ASM.ASMVisitor;

public class phyreg extends operand{

    public String regname;

    public phyreg(String regname){
        this.regname = regname;
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
