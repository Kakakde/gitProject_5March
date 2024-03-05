public class Handler_sumofOppoAmount {
    public static void methodCalc_Amount(List<Opportunity> OppoList, Map<Id, Opportunity> OppoMap) {
        Set<Id> AccountIds = new Set<Id>();
        Map<id, Decimal> CalculateMap = new Map<Id, Decimal>();
        if(!OppoList.isEmpty())
        {
            for(Opportunity opp : OppoList)
            {
                if(opp.Amount != OppoMap.get(opp.Id).Amount)
                {
                    AccountIds.add(opp.AccountId);
                }
            }
        }
        AggregateResult Result = [SELECT SUM(Amount)TotalAmount FROM Opportunity];
        Decimal  TotalAmount = (Decimal)Result.get('TotalAmount');
        List<Account> acclist = [SELECT Id, Name, AnnualRevenue FROM Account WHERE Id IN: AccountIds];
        List<Account> UpdList = new List<Account>();
        for(Account acc : acclist)
        {
            acc.AnnualRevenue = TotalAmount;
            UpdList.add(acc);
        }
        if(!UpdList.isEmpty())
        {
            update UpdList;
        }
    }
}