public class Handler_accUpd_retCon {
	public static void methodRetrieve_Contact(List<Account> accList)
    {
        Set<id> AccountIds = new Set<id>();
        if(!accList.isEmpty())
            {
                for(Account acc : accList)
                {
                    AccountIds.add(acc.id);
                }
            }
        List<Contact> conList = [SELECT Id, LastName, AccountId FROM Contact WHERE AccountId IN: AccountIds];
        List<Contact> updConList = new List<Contact>();
        if(!conList.isEmpty())
        {
            for(Contact cn : conList)
            {
               cn.Phone = '123';
                updConList.add(cn);
            }
        }
        if(!updConList.isEmpty())
        {
            update updConList;
        }
    }
}