public class Mydate{
    
    public void getDate(){
        
    date yourdate = date.newinstance(1969,12,7);
      time mytime = time.newinstance(18,30,2,20);  
        Datetime myDateTime = Datetime.now();
Date today = Date.today();
        Date myNext30 = Today.addDays(30);
        system.debug(yourdate);
        system.debug(mytime);
       system.debug(mydatetime);
        system.debug(today);
        system.debug('mynext30 = ' + mynext30);
        
    }
    
    

}