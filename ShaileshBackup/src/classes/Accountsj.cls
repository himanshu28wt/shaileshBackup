public class Accountsj{

 
 private Account Acc;
 public string ratings{get;set;}
 public list<contact> listoFContact{get;set;}
 public string idAccount;
 public List<SelectOption> options{get;set;}
 
 public Accountsj(apexPages.standardController stdControll){
    
     idAccount = apexPages.currentPage().getParameters().get('id');
     this.Acc = (account)stdControll.getRecord();
     Account a = [select id,rating from Account where id =: idAccount ];
     ratings = a.rating;
     
     listoFContact = new list<contact>();
     listoFContact = [select id,name ,rating__c,Account.rating from Contact where AccountId =: idAccount];
     
     
    options = new List<SelectOption>();
        
   Schema.DescribeFieldResult fieldResult =
 Account.rating.getDescribe();
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
       
   options.add(new SelectOption('--All--', '--All--'));     
   for( Schema.PicklistEntry f : ple)
   {
      options.add(new SelectOption(f.getLabel(), f.getValue()));
   }      
        
    }
    
    public void SelectContact(){
      
        if(ratings != '--All--'){
        listoFContact = [select id,name ,rating__c,Account.rating from Contact where AccountId =: idAccount and rating__c =:ratings ];
        system.debug('sssssssssssssssss' + listoFContact );
        }
        
        }
    
  }