trigger UpdateItselfAccount on Account (after insert,after update)
{
    List<Account> parentAccounts = new List<Account>();
    if(recursive.rec == true){
      recursive.rec = false;
    list<Account> listAcc = [select id,name,rating,parent.rating from Account where id in : trigger.newMap.keySet() ];
    
    for(Account currAcc : listAcc )
    {
        if(currAcc.parentId != null)
        {
             currAcc.rating = currAcc.parent.rating;
            parentAccounts.add(currAcc);
        }
        else{
           currAcc.rating = currAcc.rating;
        }
    }
    
    
    if(parentAccounts.size() > 0)
    update parentAccounts;
    }
}