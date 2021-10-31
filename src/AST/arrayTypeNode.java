package AST;

import Util.position;

public class arrayTypeNode extends valTypeNode{
    public int dimension;
    public arrayTypeNode(position pos, int dimension, String typename){
        super(pos, typename);
        this.dimension = dimension;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
