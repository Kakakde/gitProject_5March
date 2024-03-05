public class accInsertClass_15Feb {
    @AuraEnabled
    public static List<account> accinsertMethod(String name) {
       List<Account> accList = new List<Account>();
       for(Integer i = 0; i <= 5; i++){
        Account acc = new Account();
        accList.add(acc);
        insert accList;
    }
        return accList;
    }
}