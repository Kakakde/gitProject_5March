public class ssc_searchText_ApexClass {
@AuraEnabled
    public static List<Account> getAccDetails(String searchtext)
    {
        String query = 'SELECT id, Name, Phone, Industry, Rating FROM Account WHERE Name like\'%'+searchtext+'%\'';
        List<Account> accounts = Database.query(query);
        return accounts;
    }
}