public class scenario5_HandlerClass {
	public static void phoneMethod(List<Contact> conList)
    {
        List<Account> AccountList = new  List<Account>();
        if(!conList.isEmpty())
        {
            for(Contact cn : conList)
            {
                Account accn = new Account();
                accn.Phone = cn.Phone;
                accn.Id = cn.accountId;
                AccountList.add(accn);
            }
        }
        insert AccountList;
    }
}