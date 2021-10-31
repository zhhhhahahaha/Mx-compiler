package AST;

import Util.position;

public class suffixExprNode extends ExprNode{
    public ExprNode lhs;
    public enum suffixOpType {
        dop,dom  //++ --
    }
    public suffixOpType suffixOp;

    public suffixExprNode(position pos, ExprNode lhs, suffixOpType suffixOp) {
        super(pos);
        this.lhs = lhs;
        this.suffixOp = suffixOp;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
