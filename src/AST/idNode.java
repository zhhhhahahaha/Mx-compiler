package AST;

import Util.position;

public class idNode extends ExprNode{
    public String id;
    public idNode(position pos, String id) {
        super(pos);
        this.id = id;
    }

    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    } 
}
