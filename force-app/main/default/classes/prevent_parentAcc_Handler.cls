public class prevent_parentAcc_Handler {
	public static void method(List<Account> acclist)
        {
            if(!accList.isEmpty())
            {
			for(Account acc : acclist)
            {
                if(acc.ParentId != NULL)
                {
                    acc.addError('Cannot delete');
                    System.debug('Trigger run succesfully');
                }
            }
            }
        }
}