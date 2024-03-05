public class conCreate_AccCreate_Handler {
	public static void method(List<Contact> conList)
    {
        Map<id,Contact> conMap = new Map<id,Contact>();
        List<Account> accList = new List<Account>();
        if(!conList.isEmpty())
        {
            for(Contact cn : conList)
            {
                Account ac = new Account();
                ac.Name = cn.lastname;
                accList.add(ac);
                conMap.put(cn.id,cn);
            }
        }
        System.debug(conMap);
        if(!accList.isEmpty())
        {
            insert accList;
        }
        System.debug(accList);
        List<Account> updAccList = new List<Account>();
        if(!accList.isEmpty())
        {
            for(Account acc : accList)
            {
             conMap.get(acc.id).AccountId = acc.id;
            	updAccList.add(acc);
            }
        }
        if(!updAccList.isEmpty())
        {
            update updAccList;
        }
    }
}