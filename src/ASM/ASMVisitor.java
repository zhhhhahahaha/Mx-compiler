package ASM;

import ASM.Inst.*;
import ASM.Operand.*;

public interface ASMVisitor {
    void visit(ASMmodule it);
    void visit(ASMfunction it);
    void visit(ASMData it);
    void visit(ASMBasicblock it);

    void visit(addiInst it);
    void visit(asmretInst it);
    void visit(beqzInst it);
    void visit(biInst it);
    void visit(callInst it);
    void visit(cmpInst it);
    void visit(jInst it);
    void visit(laInst it);
    void visit(liInst it);
    void visit(lwInst it);
    void visit(mvInst it);
    void visit(swInst it);

    void visit(phyreg it);
    void visit(virtualreg it);
}
