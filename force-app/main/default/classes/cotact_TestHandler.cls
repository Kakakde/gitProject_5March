public class cotact_TestHandler {
	public static void method(List<Contact> conList)
        {
          Account acc;
            List<Account> accList = [SELECT id, Name FROM Account WHERE Name = 'Test'];
            if(accList.isEmpty())
            {
               acc = new Account();
                acc.Name = 'Test';
                insert acc;
            }
            else{
             acc = accList.get(0);
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