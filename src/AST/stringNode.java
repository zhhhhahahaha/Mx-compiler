package AST;

import Util.position;

public class stringNode extends ExprNode{
    public String string;
    public stringNode(position pos, String string) {
        super(pos);
        this.string = string;
    }
    
    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}
