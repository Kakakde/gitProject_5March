public class prevent_sameNameHandler {
	 /* public static void method(List<Account> accList)
    {
      Set<String> AccountName = new Set<String>();
        if(!accList.isEmpty())
        {
            for(Account acc : accList)
            {
                AccountName.add(acc.Name);
            }
        }
        List<Account> AccRecList = [SELECT Id, Name FROM Account WHERE Name IN : AccountName];
        Map<String, Account> AccMap = new Map<String, Account>();
        if(!AccRecList.isEmpty())
        {
            for(Account accmov : AccRecList)
            {
                AccMap.put(accmov.Name, accmov);
            }
        }
        if(!accList.isEmpty())
        {
            for(Account ac : accList)
            {
                if(AccMap.containsKey(ac.Name))
                {
                    ac.addError('Duplicate Name Found try Another');
                }
            }
        }*/

    public static void method(List<Account> newAccounts) {
        Set<String> existingAccountNames = new Set<String>();
        
        // Collect the names of existing Accounts
        for (Account acc : [SELECT Name FROM Account WHERE Id NOT IN :newAccounts]) {
            existingAccountNames.add(acc.Name);
        }
        
        for (Account newAccount : newAccounts) {
            if (existingAccountNames.contains(newAccount.Name)) {
                newAccount.addError('Account with this name already exists.');
            }
        }
    }
}