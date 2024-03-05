public class practice_Oct2_SSC_searchtext {
@AuraEnabled
    public static List<Account> searchAcc(String searchtext)
    {
        String query = 'SELECT Id, Name, Phone, Industry, Rating FROM Account WHERE Name LIKE \'%'+searchtext+'%\'';
       	List<Account> accRecord = Database.query(query);
        //system.debug(accRecord);
        return accRecord;
    }
}