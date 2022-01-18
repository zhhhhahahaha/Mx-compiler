package ASM;

public class ASMData {
    public String name;
    public enum Type{
        word, string
    }
    public Type type;
    public Integer operandint;
    public String operandstring;

    public ASMData(String name, Type type, Integer operandint, String operandstring){
        this.name = name;
        this.type = type;
        this.operandint = operandint;
        this.operandstring = operandstring;
    }

    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
