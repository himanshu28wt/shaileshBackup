public class Soql{
    
    public void populate()
    {
integer i;
        string str = 'shailu';
        list<Master_Table__c> mst = [select Name,balance__c from Master_Table__c where Holder_Name__c =: str];
        system.debug('total nos of records' + '..' + mst.size());
        for(i = 0; i<mst.size(); i++)
           system.debug(mst.get(i)) ;
    }
}