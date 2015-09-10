public class Count{

    public void populate()
        
    {
    integer i = [select count() from account where rating = 'hot'];
        
        system.debug('the number is'  + i);
        
            }     
}