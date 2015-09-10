public class Myset{
    
    public void populate(){
        set<ID> mySet = new set<ID>{'0019000000RM1FI','0019000000RM1FM'};
            
   list<account> acc = [select id ,name,rating from account where id in : mySet];
        
        for(integer i=0; i<acc.size();i++)
            
        system.debug(acc.get(i));    
    
    }
}