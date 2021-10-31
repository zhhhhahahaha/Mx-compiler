package AST;

import Util.position;

public class classCreatorNode extends newExprNode{
    public varTypeNode varType;
    public classCreatorNode(position pos, varTypeNode varType) {
        super(pos);
        this.varType = varType;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
