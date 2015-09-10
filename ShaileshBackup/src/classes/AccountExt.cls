public class AccountExt{


private Account acct;
public AccountExt(apexpages.standardController stdController)
{
   Acct = (Account)stdController.getRecord();
   }
   
   
   public double getmonthlyRevenue()
   {
   if(Acct.AnnualRevenue != null){
   
      return acct.Annualrevenue/12;
      }
      else{
       return 0.0;
    }
    }
  public pageReference doSave()
  {
  database.insert(acct);
  return null;
  }
  
                          }