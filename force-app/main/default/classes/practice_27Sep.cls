public class practice_27Sep {
@AuraEnabled
    public static List<Account> getData(String searchtext)
    {
        String query = 'SELECT id, Name, Phone, Industry, Rating FROM Account WHERE Name LIKE\'%'+searchtext+'%\'';
        List<Account> accounts = Database.query(query); 
    	return accounts;
    }
}