@isTest
private class TestClass_OpportunityShare_withUser {
@isTest
     static void recordShare_Method()
    {
        Opportunity ops = new Opportunity();
        ops.Name = 'EVE Lens';
        ops.StageName = 'Closed Won';
        ops.CloseDate = System.today();
        try{
            insert ops;
            System.debug(ops);
        }catch(Exception e){
            System.debug(e.getMessage());
        }
        User us = [SELECT Id, Name FROM User WHERE Name LIKE '%Sonali%'];
        OpportunityShare osh = [SELECT OpportunityId, UserOrGroupId, OpportunityAccessLevel, RowCause
                                FROM OpportunityShare WHERE OpportunityId =: ops.Id AND UserOrGroupId =: us.Id];
        if(ops.stageName == 'Closed Won')
        {
           System.assertEquals(osh.OpportunityId, ops.Id, 'OpportunityShare Id should be same as Opportunity Id');
            System.assertEquals(osh.OpportunityAccessLevel, 'Rea	d', 'Opportunity Access Level Should be Read');
        }
        else{
            System.assertEquals(osh.Id, Null, 'OpportunityShare Record failed');
        }
    }
}