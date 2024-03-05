public class practice_Oct2_Latest10Cont_ApexClass {
@AuraEnabled
    public static List<Contact> getContact()
    {
        List<Contact> conList = [SELECT LastName, Phone, AccountId, createdDate FROM Contact ORDER BY createdDate DESC LIMIT 10];
       // system.debug(JSON.serializePretty(conList));
        return conList;
    }
}