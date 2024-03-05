public class handler_5Jan_practice1_onAccount
{
    public static void setPhoneValue(List<Account> accList) 
    {
        if(!accList.isEmpty())
        {
            for (Account acc : accList)
            {
                if (acc.Industry == 'Banking') 
                {
                    acc.Phone = '999';
                }
            }
        }
    }
}