public class Handler_accInsert_conInsert {
	public static void methodInsert(List<Account> accList)
    {
        List<Contact> conList = new List<Contact>();
        if(!accList.isEmpty())
        {
            for(Account acc : accList)
            {
                Contact cn = new Contact();
                cn.LastName = acc.Name + 'Con';
                cn.AccountId = acc.Id;
                conList.add(cn);
                
            }
        }
        if(!conList.isEmpty())
        {
         	   insert conList;
        }
        
    }
}