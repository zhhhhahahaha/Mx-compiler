package AST;

import Util.position;

import java.util.ArrayList;

public class exprStmtNode extends StmtNode{
    public exprlistNode exprlist;
    public exprStmtNode(position pos, exprlistNode exprlist){
        super(pos);
        this.exprlist = exprlist;
    }
    @Override
    public void accept(ASTVisitor visitor){
        visitor.visit(this);
    }
}
