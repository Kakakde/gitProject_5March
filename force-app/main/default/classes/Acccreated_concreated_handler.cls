public class Acccreated_concreated_handler {
	public static void method(List<Account> accList)
    {
        List<contact> conList = new List<Contact>();
        if(!accList.isEmpty())
            {
                for(Account acc : accList)
                {
                    contact con = new Contact();
                    con.Lastname = acc.name+' Contact';
                    con.AccountId = acc.id;
                    conList.add(con);
                }
            }
        insert conList;
    }
}