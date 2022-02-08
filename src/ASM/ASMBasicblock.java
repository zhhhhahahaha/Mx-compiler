package ASM;

import ASM.Inst.ASMInst;

import java.util.ArrayList;

public class ASMBasicblock {
    public String name;
    public ASMInst head;
    public ASMInst tail;
    public ArrayList<String> succlabellist = new ArrayList<>();

    public ASMBasicblock(String name){
        this.name = name;
        this.head = null;
        this.tail = null;
    }

    public void delete(ASMInst it){
        if(head == tail){
            assert it == head;
            head = null;
            tail = null;
        }else if(it == head){
            it.succ.prev = null;
            head = it.succ;
        }else if(it == tail){
            it.prev.succ = null;
            tail = it.prev;
        }else{
            it.prev.succ = it.succ;
            it.succ.prev = it.prev;
        }
    }

    public void addtail(ASMInst it){
        if(head==null){
            this.head = it;
            this.tail = it;
        }
        else{
            tail.succ = it;
            it.prev = tail;
            tail = it;
        }
    }

    public void addhead(ASMInst it){
        if(head==null){
            this.head = it;
            this.tail = it;
        }
        else{
            head.prev = it;
            it.succ = head;
            head = it;
        }
    }

    public void insert_prev(ASMInst pos, ASMInst it){
        if(pos==head){
            addhead(it);
        }
        else{
            pos.prev.succ = it;
            it.prev = pos.prev;
            it.succ = pos;
            pos.prev = it;
        }
    }

    public void insert_succ(ASMInst pos, ASMInst it){
        if(pos==tail){
            addtail(it);
        }
        else{
            pos.succ.prev = it;
            it.succ = pos.succ;
            it.prev = pos;
            pos.succ = it;
        }

    }

    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
