package MIR.Type;


import java.util.HashMap;

public class classType extends IRType{
    public String name;
    public Integer number;
    public HashMap<String, Integer> typenumlist = new HashMap<>();
    public HashMap<String, IRType> typelist = new HashMap<>();

    public classType(String name){
        this.name = name;
        this.number = 0;
    }


}
