public class preventDelete_Handler {
	public static void method(List<Contact> conList)
    {
        set<id> conSet = new set<id>();
        for(Contact cnn : conList)
        {
            conSet.add(cnn.Id);
        }
 		List<Contact> conRecord = [SELECT id, AccountId FROM Contact WHERE id IN : conSet];
        
            for(Contact cn : conList)
            {
                if(cn.AccountId != null)
        {
                cn.addError('Cannot Delete due to Account assign');
            }
            }
        }
    
}