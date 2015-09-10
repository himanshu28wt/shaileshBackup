public class Logical{
    
    integer myVar = 90;
    
    public void dolog(){
     system.debug('value of my var' + myVar);
        
        if(myVar<50)
           system.debug(myVar + 'is more than 50');
        
        else
            
          system.debug(myVar +'is less than 50');  
        
    }

}