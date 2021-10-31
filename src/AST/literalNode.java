package AST;

import Util.position;

public class literalNode extends ExprNode{
    public String literal;
    public literalNode(position pos, String literal) {
        super(pos);
        this.literal = literal;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
