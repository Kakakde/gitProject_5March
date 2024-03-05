public class Handler_numofCon_Calc {
	public static void methodCalc(List<Contact> conList, List<Contact> conList1)
    {
        Set<Id> AccountIds = new Set<Id>();
        if(!Conlist.isEmpty())
        {
            for(Contact con : ConList)
            {
                AccountIds.add(con.AccountId);
            }
        }
        List<Account> accList = [SELECT id, Name, NumberOfEmployees, (SELECT Id, AccountId FROM Contacts) FROM Account WHERE id IN:AccountIds];
        List<Account> updateAccList = new List<Account>();
        if(!accList.isEmpty())
        {
            for(Account acc : accList)
            {
				acc.NumberOfEmployees = acc.Contacts.size();
                updateAccList.add(acc);
            }
        }
        if(!updateAccList.isEmpty())
        {
            update updateAccList;
        }
    }
}