public class Handler_addError_18Jan {
	public static void methodError(List<Account> accList)
    {
		if(!accList.isEmpty())
            {
            	for(Account acc : accList)
                    {
                    	if(acc.Industry == 'Finance')
                        {
                            acc.addError('Cannot update the record. ');
                        }
                    }
            }
    }
}