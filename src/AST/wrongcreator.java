package AST;

import Util.position;

public class wrongcreator extends newExprNode{
    public wrongcreator(position pos) {
        super(pos);
    }
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
