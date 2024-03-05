public class Handler_conDes_accDes {
    public static void Method_conDes_accDes(Map<id, Contact> oldMapData, Map<id, Contact> newMapData) {
        Set<Id> AccIds = new Set<Id>();
        Map<Id, String> oldDesData = new Map<Id,String>();
        if(!newMapData.isEmpty())
        {
            for(Contact cn : newMapData.values())
            {
                Contact oldDes = oldMapData.get(cn.id);
                if(cn.Description != Null && cn.Description != oldMapData.get(cn.Id).Description)
                {
                 AccIds.add(cn.AccountId);  
                 oldDesData.put(cn.AccountId, oldDes.Description); 
                }
            }
        }
        List<Account> UpdList = new List<Account>();
        if(!AccIds.isEmpty())
        {
            for(Account acc : [SELECT Id, Name, Description FROM Account WHERE Id IN: AccIds])
            {
              //  String OldDesString = oldDesData.get(acc.Id);
                if(!oldDesData.isEmpty())
                {
                    acc.Description = oldDesData.get(acc.Id);
                    UpdList.add(acc);
                }
            }
        }
        if(!UpdList.isEmpty())
        {
            update UpdList;
        }
    }
}