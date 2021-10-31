package AST;

import Util.position;

public class functionCallNode extends ExprNode{
    public String id;
    public exprlistNode exprlist;
    public functionCallNode(position pos, String id, exprlistNode exprlist) {
        super(pos);
        this.id = id;
        this.exprlist = exprlist;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
