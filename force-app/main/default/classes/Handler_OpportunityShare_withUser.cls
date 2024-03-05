public class Handler_OpportunityShare_withUser {
	public static void shareMethod(List<Opportunity> oppoList)
    {
        User us = [SELECT Id, Name FROM User WHERE Name LIKE '&Sonali%' LIMIT 1];
        List<OpportunityShare> osList = new List<OpportunityShare>();
        if(!oppoList.isEmpty())
        {
            for(Opportunity op : oppoList)
            {
                if(op.StageName == 'Closed Won')
                {
                    OpportunityShare oppoShare = new OpportunityShare();
                    oppoShare.OpportunityId = op.Id;
                    oppoShare.UserOrGroupId = us.id;
                    oppoShare.OpportunityAccessLevel = 'Edit';
                    oppoShare.RowCause = 'Manual';
                    osList.add(oppoShare);
                }
            }
        }
          insert osList;
    }
}