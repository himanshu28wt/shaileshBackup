public class Const1{
   private String modelnumber;
    private integer numberinstock;
        public const1(){
        
        modelNumber = 'XX-XX';
       numberInStock = 0;
}
    public const1(String theModelNumber, Integer theNumberInStock) {
modelNumber = theModelNumber;
numberInStock = theNumberInStock;
}
    
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