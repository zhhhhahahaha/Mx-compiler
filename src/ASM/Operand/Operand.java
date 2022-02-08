package ASM.Operand;

import ASM.ASMVisitor;

abstract public class Operand {
    abstract public void accept(ASMVisitor visitor);
}
