package AST;

import java.util.ArrayList;

import Util.position;

public class varlistNode extends StmtNode{
    public ArrayList<varDefNode> varlist = new ArrayList<>();
    public varlistNode(position pos){
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
