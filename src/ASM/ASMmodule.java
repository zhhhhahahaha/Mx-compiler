package ASM;

import ASM.Operand.phyreg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;

public class ASMmodule {
    public ArrayList<ASMfunction> funclist = new ArrayList<>();
    public ArrayList<ASMData> datalist = new ArrayList<>();

    public static ArrayList<String> phyRegName = new ArrayList<>(Arrays.asList(
            "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1",
            "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7",
            "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"));
    // caller: 0 ; callee: 1 ; others: 2
    public static ArrayList<Integer> phyRegType = new ArrayList<>(Arrays.asList(
            2, 0, 2, 2, 2, 0, 0, 0, 2, 1,
            0, 0, 0, 0, 0, 0, 0, 0,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0
    ));
    public HashMap<String, phyreg> sphyreglist = new HashMap<>();
    public ArrayList<phyreg> iphyreglist = new ArrayList<>();

    public ASMmodule(){
        for(int i = 0; i < 32; i++){
            phyreg reg = new phyreg(phyRegName.get(i));
            sphyreglist.put(phyRegName.get(i), reg);
            iphyreglist.add(reg);
        }
    }

    public phyreg getphyreg(String name){
        return sphyreglist.get(name);
    }

    public phyreg getphyregfrnum(int i){
        return iphyreglist.get(i);
    }

    public int getRegType(int i){
        return phyRegType.get(i);
    }
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }


}
