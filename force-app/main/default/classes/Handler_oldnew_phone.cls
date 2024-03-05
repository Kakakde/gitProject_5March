public class Handler_oldnew_phone {
	public static void methodUpdate(Map<String,Account> oldMap1, Map<String,Account> newMap1)
    {
        for(Account acc : newMap1.values())
        {
        System.debug(oldMap1.get(acc.id).Phone);
        System.debug(newMap1.get(acc.id).Phone);
        }
}
}