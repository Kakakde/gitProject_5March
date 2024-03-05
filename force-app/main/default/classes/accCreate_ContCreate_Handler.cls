public class accCreate_ContCreate_Handler {
	public static void method(List<Account> newList)
    {
        List<Contact> conList = new List<Contact>();
        if(!newList.isEmpty())
        {
            for(Account ac : newList)
            {
                Contact cn = new Contact();
                cn.lastname = ac.name+' Contact';
                cn.AccountId  = ac.Id;
                conList.add(cn);
            }
        }
        if(!conList.isEmpty())
        {
            insert conList;
        }
    }
}