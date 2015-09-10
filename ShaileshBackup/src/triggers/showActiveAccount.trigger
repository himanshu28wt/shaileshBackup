trigger showActiveAccount on Contact (after insert,after update,after delete,after undelete) {
 
  
  set<id> idsAcc = new Set<id>();
  
   if(trigger.IsInsert || trigger.IsUpdate){
   for(contact c : trigger.new){
       idsAcc.add(c.AccountId);
    }
   }
   
    if(trigger.isDelete|| trigger.isUndelete){
   for(contact c : trigger.new){
       idsAcc.add(c.AccountId);
    }
   }
   
   map<id,Account> mapAcc = new map<id,Account>([select id,name,Active_contacts__c from Account where id in : idsAcc]);
   
   list<Account> listAcc = new list<Account>();
   for(Account acc : [select id,name,Active_contacts__c ,
                     (select id,name,active__c from contacts where Active__c = true) from Account where id in :idsAcc]){
       
         
         mapAcc.get(acc.id).Active_contacts__c = acc.contacts.size();
         listAcc.add(mapAcc.get(acc.id));  
                
   }
    
    update listAcc;
    
    }