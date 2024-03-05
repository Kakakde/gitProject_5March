@isTest
private class TestClass_CaseShare_withUser {
@isTest	
    static void method()
    {
        Case cs = new Case();
        cs.Origin = 'Email';
        cs.Priority = 'High';
        cs.Status = 'New';
        try{
            insert cs;
        }catch(Exception e){
            
        }
        
        user u = [SELECT Id, Name FROM User WHERE Name LIKE '%Vikas%'];
        CaseShare csShareList = [SELECT CaseId, UserOrGroupId, CaseAccessLevel, RowCause 
                                 FROM CaseShare WHERE CaseId =: cs.Id AND UserOrGroupId =: u.Id];
        System.assertEquals('Edit', csShareList.CaseAccessLevel, 'Case Access Level should be Edit');
        
    }
}