package AST;

public interface ASTVisitor {
    void visit(FileNode it);

    void visit(classDefNode it);
    void visit(classConstructorNode it);

    void visit(voidTypeNode it);
    void visit(varTypeNode it);
    void visit(arrayTypeNode it);

    void visit(functiondefNode it);
    void visit(functionParameterNode it);

    void visit(exprlistNode it);
    void visit(indexExprNode it);
    void visit(prefixExprNode it);
    void visit(suffixExprNode it);
    void visit(methodExprNode it);
    void visit(memberExprNode it);
    void visit(binaryExprNode it);
    void visit(assignExprNode it);
    void visit(arrayCreatorNode it);
    void visit(classCreatorNode it);
    void visit(functionCallNode it);
    
    void visit(blockStmtNode it);
    void visit(forStmtNode it);
    void visit(ifStmtNode it);
    void visit(whileStmtNode it);
    void visit(returnStmtNode it);
    void visit(breakStmtNode it);
    void visit(continueStmtNode it);
    void visit(exprStmtNode it);

    void visit(varNode it);
    void visit(varDefNode it);
    void visit(varlistNode it);

    void visit(literalNode it);
    void visit(idNode it);
    void visit(lambdaExprNode it);
    void visit(integerNode it);
    void visit(stringNode it);
    void visit(thisNode it);



}


