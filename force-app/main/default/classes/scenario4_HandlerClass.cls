public class scenario4_HandlerClass {
	public static void prefixMethod(List<Account> accList)
    {
        List<Account> accountDataList = new  List<Account>();
        if(!accList.isEmpty())
        {
            for(Account accn : accList)
            {
                accn.Name = 'Mr.' + accn.Name; //add suffix
                accountDataList.add(accn); 
            }
        }
        insert accountDataList;
    }
}