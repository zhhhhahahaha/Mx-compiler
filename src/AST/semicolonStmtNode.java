package AST;

import Util.position;

public class semicolonStmtNode extends StmtNode{
    public semicolonStmtNode(position pos){
        super(pos);
    }
    
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    } 
}
