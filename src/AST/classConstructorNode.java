package AST;

import Util.position;

public class classConstructorNode extends ASTNode{
    public String id;
    public functionParameterNode functionparameter;
    public blockStmtNode block;
    public classConstructorNode(position pos, String id, functionParameterNode functionparameter, blockStmtNode block) {
        super(pos);
        this.id = id;
        this.functionparameter = functionparameter;
        this.block = block;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
