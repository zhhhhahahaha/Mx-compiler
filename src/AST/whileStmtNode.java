package AST;

import Util.position;

public class whileStmtNode extends StmtNode{
    public ExprNode condition;
    public StmtNode state;

    public whileStmtNode(ExprNode condition, StmtNode state, position pos) {
        super(pos);
        this.condition = condition;
        this.state = state;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
