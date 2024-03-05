public  class Handler_conPhn_accPhn {
    public static void Handler_Meth(Map<id, Contact> oldRecMap, Map<id, Contact> newRecMap) {
       Set<id> AccIds = new Set<id>();
       Map<id, String> PhoneMap = new Map<Id,String>();
        if(!newRecMap.isEmpty())
        {
            for(Contact cnn : newRecMap.values())
            {
                Contact oldRecData = oldRecMap.get(cnn.id);
                if(cnn.Phone != Null && cnn.Phone != oldRecMap.get(cnn.Id).Phone)
                {
                    AccIds.add(cnn.AccountId);
                    PhoneMap.put(cnn.AccountId, oldRecData.Phone);
                }
            }
        }
        List<Account> accUpdList = new List<Account>();
        if(!AccIds.isEmpty())
        {
            for(Account acc : [SELECT Id, Name FROM Account WHERE Id IN: AccIds])
            {
                String oldPhnValue = PhoneMap.get(acc.Id);
                if(!PhoneMap.isEmpty())
                {
                    acc.Fax = PhoneMap.get(acc.Id);
                    accUpdList.add(acc);
                }
            }
        }
        if(!accUpdList.isEmpty())
        {
            update accUpdList;
        }
    }
}