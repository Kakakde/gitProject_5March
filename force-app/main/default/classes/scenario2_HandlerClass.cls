public class scenario2_HandlerClass {
	public static void preventDelete(List<Case> newCaseList)
    {
        if(!newCaseList.isEmpty())
        {
            for(Case cs : newCaseList)
            {
                if(cs.Status != 'Closed')
                {
                    cs.addError('Cannot delete, case is not Closed');
                }
            }
        }
    }
}