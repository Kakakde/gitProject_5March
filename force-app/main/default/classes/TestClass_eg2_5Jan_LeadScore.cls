@isTest
private class TestClass_eg2_5Jan_LeadScore {
    @isTest
    private static void method() {
        Lead ld = new Lead();
        ld.LastName = 'Kirloskar';
        ld.Company = 'Kirloskar Co. ltd';
        ld.Status = 'Working - Contacted';
        ld.Industry = 'Engineering';
        ld.Email = 'connect@kirloskar.com';
        ld.Phone = '9832492039';
        try{
            insert ld;
        }catch(Exception e)
        {
            System.debug(e.getMessage());
        }
        Lead leadData = [SELECT id, LastName, Company, Status, Industry, Email, Phone, LeadScore__c
                        FROM Lead];
        System.assertEquals(40, leadData.LeadScore__c, 'LeadScore should be update according to date enterd');
    }
}