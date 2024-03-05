public class testAcc_Handler {
	public static void method(List<Contact> conList)
    {
        List<Account> conData = [SELECT id, Name FROM Account WHERE Name = 'Test'];
        Account acc;
        if(conData.isEmpty())
            {
                acc = new Account();
                acc.Name = 'test';
                insert acc;
            }
        else
        {
            acc = conData.get(0);
        }
            for(Contact cn : conList)
            {
                if(cn.AccountId == Null)
                {
                cn.AccountId = acc.Id;
            }
                }
    }
}