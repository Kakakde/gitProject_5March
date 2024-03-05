public class Handler_17Jan_insertContact {
	public static void methodInsert(Map<id, Account> accMap)
    {
        List<Opportunity> conupdList = new List<Opportunity>();
      for(Account acc : accMap.values())
      {
          Opportunity cn = new Opportunity(Name = 'newTest', AccountId = acc.Id);
          conupdList.add(cn);
      }
        System.debug(conupdList);
        insert conupdList;
        
      //  List<Contact> conList = [SELECT Id, LastName, AccountId FROM Contact WHERE AccountId IN: AccountIds];
    }
}