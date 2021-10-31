package AST;

import Util.position;

public class functiondefNode extends ASTNode{
    public blockStmtNode block;
    public typeNode returnType;
    public String functionName;
    public functionParameterNode parameter;

    public functiondefNode(position pos, typeNode returnType, String functionName, functionParameterNode parameter, blockStmtNode block) {
        super(pos);
        this.block = block;
        this.returnType = returnType;
        this.functionName = functionName;
        this.parameter = parameter;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }  
}
