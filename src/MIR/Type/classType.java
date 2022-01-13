package MIR.Type;


import java.util.HashMap;

//放在module里的classtype是存有全部的typelist和typenumlis的信息的
//存放在其他地方只用于表示变量类型的是不存这些信息的

public class classType extends IRType{
    public String name;
    public Integer number;
    public HashMap<String, Integer> typenumlist = new HashMap<>();
    public HashMap<String, IRType> typelist = new HashMap<>();
    public int size;

    public classType(String name){
        this.name = name;
        this.number = 0;
    }
    public void addsize(IRType it){
        if(it instanceof boolType){
            size+=1;
        }
        else{
            size+=4;
        }
    }
}
