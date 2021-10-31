package AST;

import java.util.ArrayList;

import Util.position;

public class classDefNode extends ASTNode{
    public String name;
    public ArrayList<ASTNode> classcontents;

    public classDefNode(position pos, String name) {
        super(pos);
        this.name = name;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    } 
}
