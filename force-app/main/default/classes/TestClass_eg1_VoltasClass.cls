@isTest
private class TestClass_eg1_VoltasClass {
    @isTest
    private static void method() {
        Voltas_Electrics__c vdC = new Voltas_Electrics__c();
        vdC.Name = 'Demo';
        vdC.Product_Type__c = 'Led & Screen';
        try {
            insert vdC;
        } catch (Exception e) {
            System.debug(e.getMessage());
        }
        Voltas_Electrics__c VoltasData = [SELECT Id, Name, Product_Type__c, Active_Region__c FROM Voltas_Electrics__c ];
        System.assertEquals('Asia', VoltasData.Active_Region__c, 'Region should be Asia of Product Type is Led & Screen');
    }
}