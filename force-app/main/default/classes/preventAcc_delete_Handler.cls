public class preventAcc_delete_Handler {
	public static void method(List<Account> newAcc)
    {
        Set<id> accSet = new Set<id>();
        for(Account acc : newAcc)
        {
            accSet.add(acc.id);
        }
        List<Account> retList = [SELECT id, (SELECT id FROM Contacts) FROM Account WHERE id IN : accSet];
        if(retList.size()>0)
        {
            for(Account ac : newAcc)
            {
                ac.addError('Contact is present Cannot delete');
            }
        }
    }
}