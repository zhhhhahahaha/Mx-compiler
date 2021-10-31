package AST;

import Util.position;

public class varTypeNode extends valTypeNode{
    public varTypeNode(position pos, String typename) {
        super(pos, typename);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

}
