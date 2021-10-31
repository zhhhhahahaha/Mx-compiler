package Util;

import java.util.HashMap;

public class Scope {
    public HashMap<String, type>members;
    public Scope parentScope;

    public Scope(Scope parentScope) {
        members = new HashMap<>();
        this.parentScope = parentScope;
    }

    public Scope() {
        members = new HashMap<>();
        parentScope = null;
    }
    public void addmembers(position pos, String name, type type) {
        members.put(name, type);
    }
    public Scope getParentScope() {
        return this.parentScope;
    }
    public type findvariable(position pos, String name) {
        if(members.containsKey(name)){
            return members.get(name);
        }
        else {
            Scope find = this.parentScope;
            while(find!=null) {
                if(find.members.containsKey(name)){
                    return find.members.get(name);
                }
                else {
                    find = find.parentScope;
                }
            }
            return null;
        }
    }
}
