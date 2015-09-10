public class NewString{
    
  
    public void myString(){
    String x = 'I am a string';
String y = 'I AM A STRING';
String z = 'Hello!';
string a =  'The !shorn! sheep !sprang!.';       
        
System.debug (x == y);
System.debug (x != z);  
  System.debug (a.length());
   System.debug (a.substring(5,10));
        system.debug(x.replaceAll('!(.*?)!','$1'));
    }
}