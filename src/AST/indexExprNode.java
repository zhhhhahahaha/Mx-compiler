package AST;

import Util.position;;

public class indexExprNode extends ExprNode{
    public ExprNode idexpr,index;
    public indexExprNode(position pos, ExprNode idexpr, ExprNode index) {
        super(pos);
        this.idexpr = idexpr;
        this.index = index;
    }
    
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
