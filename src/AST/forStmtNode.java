package AST;

import Util.position;

public class forStmtNode extends StmtNode{
    public ExprNode condition, incr;
    public StmtNode state;
    public ASTNode init;

    public forStmtNode(ASTNode init, ExprNode condition, ExprNode incr, StmtNode state, position pos) {
        super(pos);
        this.init = init;
        this.condition = condition;
        this.incr = incr;
        this.state = state;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
