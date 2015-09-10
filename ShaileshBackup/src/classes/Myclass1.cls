public class Myclass1{
    
    private String modelnumber;
    private integer numberinstock;
    
    public void updateStock(integer justsold){
        
     numberinstock = numberinstock - justsold;   
        
        
    }
    public void setmodelnumber(string themodelnumber){
        
    modelnumber = themodelnumber;
        
    }
    
    public string getmodelnumber(){
     return modelnumber;   
    }

}