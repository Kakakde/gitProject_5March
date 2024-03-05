@isTest
private class TestClass_ConPhone_AccPhone {
@isTest
    private static void method()
    {
        Account acc = new Account();
        acc.Name = 'Test Account';
        insert acc;
        
        String str = '453-4342';
        Contact cn = new Contact();
        cn.LastName = 'Test Contact';
        cn.AccountId = acc.id;
        cn.Phone = str;
       	 insert cn;
        try{
            
           acc.Phone = cn.Phone;
            update cn;
        }catch(Exception e)
        {
            System.debug(e);
        }
        Account accList = [SELECT Id, Name, Phone FROM Account WHERE Id =: acc.Id];
       
            System.assertEquals(accList.Phone, cn.Phone, 'Account Phone should be same as Contact Phone');
        
    }
}