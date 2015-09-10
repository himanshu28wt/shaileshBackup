public class Set1{
    
    
    public void populate(){
        
        
        set<string> mset = new set<String>{'a','b','c','d'};
            
            mset.add('a');
        mset.add('e');
        
        if(mset.contains('f')){
         system.debug('it contains f');
            
        }else
        {
            
         system.debug('it dosnt contain f');   
        }
        
        system.debug('my set =' + mset );
        system.debug('the size of set =' + mset.size());
        
        
        
    }
    

}