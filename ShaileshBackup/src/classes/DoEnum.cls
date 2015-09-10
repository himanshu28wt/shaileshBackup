public class DoEnum{
    
    
   
        public enum season{summer ,winter,spring,fall}
        season s = season.summer;
    public void myNewVar(){
        
    if(s==season.summer){
    //will write the string value of summer
        system.debug(s);
       }
    else{
       System.debug('not summer');
    }
    
     }

  }