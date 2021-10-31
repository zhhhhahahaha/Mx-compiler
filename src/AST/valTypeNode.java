package AST;

import Util.position;

abstract public class valTypeNode extends typeNode{
    public valTypeNode(position pos,String typename) {
        super(pos,typename);
    }
    public valTypeNode(position pos){
        super(pos);
    }  
}
