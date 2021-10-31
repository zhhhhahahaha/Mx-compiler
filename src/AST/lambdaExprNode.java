package AST;

import Util.position;

public class lambdaExprNode extends ExprNode{
    public functionParameterNode parameter;
    public blockStmtNode suite;
    public exprlistNode exprlist;
    public lambdaExprNode(position pos, blockStmtNode suite) {
        super(pos);
        this.suite = suite;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
