public class students{
public double m;
    public integer rollno
    {
     get;
        set;
        
    }
    
       public string name
    {
        get;
        set;
    }
    
    public void setMarks(double totalmarks)
    {
     m = totalmarks  ; 
    }
    public double getMarks(){
        
     return m;   
    }
    
        
    public string getResult()
        
    {
        
     if(m>=70)
         return 'pass';
        else
          return 'fail';
        
    }
    
    public pageReference calcResult()
    {
     return null;   
    }
        
  }