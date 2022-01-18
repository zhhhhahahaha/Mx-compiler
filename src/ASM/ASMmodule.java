package ASM;

import java.util.ArrayList;
import java.util.HashMap;

public class ASMmodule {
    public ArrayList<ASMfunction> funclist = new ArrayList<>();
    public ArrayList<ASMData> datalist = new ArrayList<>();

    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }


}
