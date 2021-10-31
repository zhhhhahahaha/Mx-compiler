package AST;

//import MIR.entity;
import Util.type;
import Util.position;



public abstract class ExprNode extends ASTNode {
    //public entity val;
    public type exprtype;
    public ExprNode(position pos) {
        super(pos);
    }

    public boolean isAssignable() {
        return false;
    }
    
}
