public class insertAcc_SSC_31Jan {
@auraEnabled
    public static String insertMethod(String Accname, String AccPhone, String AccIndus, String AccRating)
    {
        String result;
        Account acc = new Account();
        acc.Name = Accname;
        acc.Phone = AccPhone;
        acc.Industry = AccIndus;
        acc.Rating = AccRating;
        insert acc;
        result = 'Account insert successfully '+acc.Id;
        return result;
    }
}