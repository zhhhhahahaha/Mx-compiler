package AST;

import Util.position;;

public class integerNode extends ExprNode{
    public String integer;
    public integerNode(position pos, String integer){
        super(pos);
        this.integer = integer;
    }
    
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
