public class Oppo_ClosedWon_Handler {
	public static void method(List<Opportunity> oppoList, Map<id, Opportunity> oppoMap)
    {
        if(!oppoList.isEmpty())
        {
            for(Opportunity opp : oppoList)
            {
                Opportunity oldRec = oppoMap.get(opp.id);
                if((opp.StageName == 'Closed Won' || opp.StageName != oldRec.StageName) && oldRec.StageName == 'Closed Won')
                {
                   opp.addError('Cannot process');
                }
            }
        }
    }
}