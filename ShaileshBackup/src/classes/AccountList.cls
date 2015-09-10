public class AccountList{
    
   public string AccountName{
        get;
        set;
       }        
    
   /* public String myid{
            get;
            
            set;
            
            } */
        
    
   public list<selectoption> getAccountData()
{
        list<account> acc =[SELECT id ,name,phone FROM Account];
            list<selectOption> lst = new list<selectoption>();
        for(Account a: acc)
            
        {
         lst.add(new selectOption(a.id,a.name));
        }
        
     return lst;   
   }
  public pageReference show()
  {
      return null;
}
}