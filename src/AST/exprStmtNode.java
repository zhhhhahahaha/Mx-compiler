package AST;

import Util.position;

public class exprStmtNode extends StmtNode{
    public ExprNode expression;
    public exprStmtNode(position pos, ExprNode expression){
        super(pos);
        this.expression = expression;
    }
    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}
