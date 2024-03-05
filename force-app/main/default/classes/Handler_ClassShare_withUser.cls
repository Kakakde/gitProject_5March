public class Handler_ClassShare_withUser {
	public static void shareMethod(List<Case> caseList)
    {	
        User us = [SELECT Id, Name FROM User WHERE Name LIKE '%Vikas%'];
        List<CaseShare> csShareList = new List<CaseShare>();
		if(!caseList.isEmpty())
            {
                for(Case cs : caseList)
                {
                    if(cs.Priority == 'High' && cs.Origin == 'Email')
                    {
                        CaseShare csShare = new CaseShare();
                        csShare.CaseId = cs.Id;
                        csShare.UserOrGroupId = us.Id;
                        csShare.CaseAccessLevel = 'Edit';
                        csShare.RowCause = 'Manual';
                        csShareList.add(csShare);
                    }
                }
            }
        insert csShareList;
    }
}