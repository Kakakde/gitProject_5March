public class Handler_5Jan_practice_accOpp {
    public static void accMethod(List<Account> accList) {
        List<Opportunity> oppoList = new List<Opportunity>();
        Date oppCloseDate = Date.today()+30;
        if(!accList.isEmpty())
        {
            for (Account acc : accList) {
                if (acc.Industry == 'Energy' && acc.AnnualRevenue >= 5000000) {
                    Opportunity opp = new Opportunity();
                    opp.Name = acc.Name + 'Opp';
                    opp.StageName = 'Prospecting';
                    opp.CloseDate = oppCloseDate;
                    opp.AccountId = acc.Id;
                    oppoList.add(opp);
                }
            }    
        } 
        if(!oppoList.isEmpty()){
        insert oppoList;
    }
    }
}