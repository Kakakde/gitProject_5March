@isTest
private class testClass_LeadAssign_19Jan {
@isTest
    private static void testmeth()
    {
        Lead lds = new Lead();
        lds.LastName = 'Sharma';
        lds.LeadSource = 'Web';
        try{
            insert lds;
        }catch(Exception e){
            System.debug(e.getMessage());
        }
        Lead leadList = [SELECT id, LastName, LeadSource, OwnerId FROM Lead WHERE id =: lds.Id];
        User usrList = [SELECT id, Name FROM User WHERE Name LIKE '%Sonali%'];
        if(lds.LeadSource == 'Web'){
        System.assertEquals(leadList.OwnerId, usrList.id, 'as expected output');
            }
    }
}