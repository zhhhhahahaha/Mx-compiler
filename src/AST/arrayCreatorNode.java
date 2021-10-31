package AST;

import java.util.ArrayList;

import Util.position;

public class arrayCreatorNode extends newExprNode{
    public arrayTypeNode varType;
    public ArrayList<ExprNode> exprlist = new ArrayList<>();
    public arrayCreatorNode(position pos, arrayTypeNode varType) {
        super(pos);
        this.varType = varType;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
