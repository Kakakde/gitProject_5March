public class Practice_18Sep {
	public static void method()
    {
        Set<id> accSet = new Set<id>();
        accSet.add('0015j0000132KtiAAE');
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Id IN : accSet];
        if(!accList.isEmpty())
        {
            System.debug('Id present ');
        }
        else
        {
            System.debug('Id is not Present ');
        }
    }
}