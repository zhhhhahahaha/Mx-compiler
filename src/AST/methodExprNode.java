package AST;

import Util.position;

public class methodExprNode extends ExprNode{
    public ExprNode expr;
    public exprlistNode exprlist;
    public String id;
    public methodExprNode(position pos, ExprNode expr, exprlistNode exprlist, String id) {
        super(pos);
        this.expr = expr;
        this.exprlist = exprlist;
        this.id = id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
