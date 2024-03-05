public class sscCallFromAura_25Sep {
@AuraEnabled
    public static List<Account> getMethod()
    {
         String s  = 'SELECT Name FROM Account WHERE Name LIKE \'sForce\'';
        System.debug(s);
        List<Account> accounts = Database.query(s);
        return accounts;
    }
}