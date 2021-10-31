//used in vardef
package AST;

import Util.position;

public class varDefNode extends StmtNode {
    public String name;
    public valTypeNode vartype;
    public ExprNode init;

    public varDefNode(position pos,valTypeNode varType, String name, ExprNode init) {
        super(pos);
        this.name = name;
        this.vartype = varType;
        this.init = init;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
