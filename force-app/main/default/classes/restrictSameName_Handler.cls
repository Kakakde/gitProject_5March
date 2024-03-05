public class restrictSameName_Handler {
	public static void method(List<Contact> conList, Map<id, Contact> conMap)
    {
      // List<conMap = [SELECT Id, LastName FROM Contact];
            List<contact> ContRet = new List<Contact>([SELECT id, LastName FROM Contact]); 
       // Map<String, Contact> conMap = new Map<String, Contact>([SELECT id, LastName FROM Contact]);
       for(contact cnr : ContRet)
        {
            conMap.put(cnr.id, cnr);
        }
        
        if(!conList.isEmpty())
            {
                for(Contact cn : conList)
                {
                    if(cn.LastName == conMap.get(cn.id).LastName)
                    {
                        cn.addError('Same name found: ');
                    }
                }
            }
    }
}