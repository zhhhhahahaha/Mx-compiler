package MIR;

import MIR.Entity.*;
import MIR.Inst.*;
import MIR.Operand.*;
import MIR.Type.*;

public interface IRVisitor {
    void visit(Module it);
    void visit(Function it);
    void visit(BasicBlock it);

    void visit(arrayType it);
    void visit(boolType it);
    void visit(classType it);
    void visit(intType it);
    void visit(nullType it);
    void visit(pointType it);
    void visit(stringType it);
    void visit(voidType it);

    void visit(boolConst it);
    void visit(intConst it);
    void visit(nullConst it);
    void visit(register it);
    void visit(stringConst it);

    void visit(allocaInst it);
    void visit(binaryInst it);
    void visit(branchInst it);
    void visit(functioncallInst it);
    void visit(getelementptrInst it);
    void visit(globalvarInst it);
    void visit(icmpInst it);
    void visit(loadInst it);
    void visit(retInst it);
    void visit(storeInst it);

    void visit(parameter it);
}
