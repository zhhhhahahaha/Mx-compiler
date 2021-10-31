package AST;

import Util.position;

public class prefixExprNode extends ExprNode{
    public ExprNode rhs;
    public enum prefixOpType {
        lon,til,  //! ~
        dop,dom,   //++ --
        plu,min   //+ -
    }
    public prefixOpType prefixOp;

    public prefixExprNode(position pos, ExprNode rhs, prefixOpType prefixOp) {
        super(pos);
        this.rhs = rhs;
        this.prefixOp = prefixOp;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
