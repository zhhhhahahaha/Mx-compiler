package AST;

import java.util.ArrayList;

import Util.position;

public class exprlistNode extends ASTNode{
    public ArrayList<ExprNode> exprlist = new ArrayList<>();
    public exprlistNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
