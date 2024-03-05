@isTest
private class TestClass_5Jan_onAcc {
   @IsTest
    static void Methodtest() {
        Account acc = new Account();
        acc.name = 'Capital';
        acc.Industry = 'Banking';
        try{
            insert acc;
        }catch(Exception e){
            System.debug(e.getMessage());
        }
        Account accnList = [SELECT Id, Name, Industry, Phone FROM Account WHERE Id = : acc.Id];
        System.assertEquals('999', accnList.Phone, 'Phone field should be set to "999"');
    }
}