public class samenamePrevent_Handler {
	public static void method(List<Account> accList)
    {
        Set<String> accName = new Set<String>();
        Map<String, Account> AccMap = new Map<String, Account>();
        if(!accList.isEmpty())
        {
            for(Account acc : accList)
            {
                accName.add(acc.Name);
            }
        }
        List<Account> newList = new List<Account>([SELECT Id, Name FROM Account WHERE Name IN :accName]);
        if(!newList.isEmpty())
        {
            for(Account nl : newList)
            {
                AccMap.put(nl.Name, nl);
            }
        }
        if(!accList.isEmpty())
        {
            for(Account ac : accList)
            {
                if(AccMap.containsKey(ac.Name))
                {
                    ac.addError('Duplicate Name Found ');
                }
            }
        }
    }
}