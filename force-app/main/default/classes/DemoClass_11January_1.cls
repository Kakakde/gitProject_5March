public class DemoClass_11January_1 {
	String str1 = 'Kevco Inc.';
    String str;
    public DemoClass_11January_1(){
        str = str1;
        methodName(str);
    }
    Public static void methodName(String getStringVal)
    {
        
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name =: getStringVal];
        System.debug(accList);
    }
}