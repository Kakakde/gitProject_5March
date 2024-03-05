public class SSCApexClass_0902 {
@AuraEnabled
    public static id getreturnIdMethod(String Name, String Phone, String Industry)
    {
        Account acc = new Account(Name = Name, Phone = Phone, Industry = Industry);
        insert acc;
        /*Contact con = new Contact();
        con.AccountId = acc.Id;
        con.LastName = Name+' Con';
        insert con;*/
        System.debug('account id '+acc.Id);
        return acc.Id;
    }
@AuraEnabled
    public static List<Contact> conDataMethod(id accId)
    {
	String conList = 'SELECT Id, AccountId, LastName FROM Contact WHERE AccountId IN: accId';
        List<Contact> conDataList = Database.query(conList);
        return conDataList;
    }
}