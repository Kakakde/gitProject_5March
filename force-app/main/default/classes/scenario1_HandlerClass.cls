public class scenario1_HandlerClass {
	public static void insertMethod(List<Opportunity> newOppoList)
    {
        Set<id> AccountIds = new Set<id>();
        if(!newOppoList.isEmpty())
        {
            for(Opportunity op : newOppoList)
            {
                if(op.Amount != NULL)
                {
                    AccountIds.add(op.id); // put id's into set.
                }
            }
        }
        List<Account> insertAccountData = new List<Account>();
            for(Opportunity opp : [SELECT id, Amount, AccountId FROM Opportunity WHERE
                                  AccountId IN: AccountIds]) //
            {
                Account acc = new Account();
                acc.AnnualRevenue = opp.Amount;
				insertAccountData.add(acc);                
            }
        insert insertAccountData;
        }
    public static void updateMetod(List<Opportunity> newOppoList)
    {
		Map<id, Opportunity> oldOpportunityData = new Map<id, Opportunity>();
        List<Account> updateAccountData = new List<Account>();
        if(!newOppoList.isEmpty())
        {
			for(Opportunity opp : newOppoList)
            {
                if(opp.Amount != oldOpportunityData.get(opp.Id).Amount)	// if user change the Amount.
                {
                    Account accoun = new Account();
                    accoun.Id = opp.AccountId;
                    accoun.AnnualRevenue = 25000;
                    updateAccountData.add(accoun);
                }
            }
        }
        update updateAccountData;
    }
}