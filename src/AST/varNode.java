//used in function parameter

package AST;

import Util.position;

public class varNode extends ASTNode{
    public valTypeNode typename;
    public String parametername;

    public varNode (position pos, valTypeNode typename, String parametername) {
        super(pos);
        this.typename = typename;
        this.parametername = parametername;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
