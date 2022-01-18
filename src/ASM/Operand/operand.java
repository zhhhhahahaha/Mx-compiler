package ASM.Operand;

import ASM.ASMVisitor;

abstract public class operand {
    abstract public void accept(ASMVisitor visitor);
}
