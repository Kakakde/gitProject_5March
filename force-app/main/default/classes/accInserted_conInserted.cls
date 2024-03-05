public class accInserted_conInserted {
	public static void insertMethod(List<Account> accList)
    {
        List<Contact> updateList = new List<Contact>();
      	if(!accList.isEmpty())
        {
            for(Account acc : accList)
            {
                Contact cn = new Contact();
                cn.AccountId = acc.id;
                cn.LastName = acc.Name+' Contact';
				updateList.add(cn);                
            }
        }
        if(!updateList.isEmpty())
        {
            insert updateList;
        }
    }
}