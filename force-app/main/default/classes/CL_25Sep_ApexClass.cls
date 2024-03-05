public class CL_25Sep_ApexClass {
@AuraEnabled
    Public Static List<Account> getData()
        {
           String acco = 'SELECT name, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10';
            List<Account> accounts = Database.query(acco);
            return accounts;
        }
}