public class query{
    
    public void populate(){
        
   list<account> acc = database.query('select ' + 'id,' +'name,' +'rating'+' from' +' account');
        
        for (account a :acc)
            
      system.debug(a.name +'  ' + a.rating);      
            } 

}