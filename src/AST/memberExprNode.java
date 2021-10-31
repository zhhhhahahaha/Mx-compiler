package AST;

import Util.position;

public class memberExprNode extends ExprNode{
    public ExprNode expr;
    public String id;
    public memberExprNode(position pos, ExprNode expr, String id) {
        super(pos);
        this.expr = expr;
        this.id = id;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
