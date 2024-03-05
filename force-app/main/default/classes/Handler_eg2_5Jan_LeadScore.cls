public class Handler_eg2_5Jan_LeadScore {
    public static void ReflectLeadScoreMethod(List<Lead> leadList) {
        Integer count = 0;
        if(!leadList.isEmpty())
        {
            for(Lead ldInstance : leadList)
            {
            count += (ldInstance.Email != null) ? 10 : 0;
            count += (ldInstance.Phone != null) ? 10 : 0;
            count += (ldInstance.Industry != null) ? 20 : 0;
              /*  if(ldInstance.Email != Null && ldInstance.Email != '')
                {
                    count = count + 10;
                }
                else if(ldInstance.Phone != Null && ldInstance.Phone != '')
                {
                    count = count + 10;
                }
                else if(ldInstance.Industry != Null)
                {
                    count = count + 20;
                }*/
                ldInstance.LeadScore__c = count;
            }
        }
    }
}