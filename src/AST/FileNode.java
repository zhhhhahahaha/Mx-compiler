package AST;

import Util.position;

import java.util.ArrayList;

public class FileNode extends ASTNode{
    public ArrayList<ASTNode> wholeprogram = new ArrayList<>();

    public FileNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
    
}
