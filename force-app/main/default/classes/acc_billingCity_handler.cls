public class acc_billingCity_handler {
    public static void method(List<Account> accList, Map<id,Account> accMap)
    {
        List<Contact> conRetrieveList = new List<Contact>();
        if(accList.isEmpty())
        {
            for(Account acc : accList)
            {
                if(acc.Phone != accMap.get(acc.Id).phone)
                {
                    List<Contact> conDataList = [SELECT Id, Account.phone, AccountId, phone, MailingCity FROM Contact WHERE AccountId =: acc.Id];
                    if(!conDataList.isEmpty())
                    {
                        for(Contact con : conDataList)
                        {
                           
                                con.Phone = acc.Phone;
                                conRetrieveList.add(con);
                        }
                    }
                }
            }
        }
        system.debug(accMap);
        if(conRetrieveList.size()>0)
        {
            update conRetrieveList;            
        }
    }
}