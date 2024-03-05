public class Handler_19Jan_pCcC {
	public static void methodPhoneUpdate(Map<id, Account> newMapData, Map<id, Account> oldMapData)
    {
        List<Contact> conList = new List<Contact>();
        List<Contact> conDataList = [SELECT id, LastName, AccountId, Phone FROM Contact WHERE AccountId IN: newMapData.keySet()];
        System.debug(conDataList);
        if(!conDataList.isEmpty())
        {
            for(Contact cn : conDataList)
            {
                cn.Phone = oldMapData.get(cn.AccountId).Phone;
                conList.add(cn);
            }
        }
        update conList;
    }
}