public class Handler_LeadAssign_19Jan {
	public static void methodAssign(List<Lead> leadList)
        {
            User userList = [SELECT Name FROM User WHERE Name LIKE '%Sonali%'];
            List<Lead> leadUpd = new List<Lead>();
            if(!leadList.isEmpty())
                {
                	for(Lead leadObj : leadList)
                    {
                        if(leadObj.leadSource == 'Web')
                        {
                            leadObj.ownerId = userList.id;
                            leadUpd.add(leadObj);
                        }
                    }
                }
         insert leadUpd;
        }
}