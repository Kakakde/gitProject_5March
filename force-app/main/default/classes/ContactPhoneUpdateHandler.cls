public class ContactPhoneUpdateHandler {
    public static void handleContactPhoneUpdates(Map<Id, Contact> oldContactMap, Map<Id, Contact> newContactMap) {
        Map<Id, String> updatedContactPhoneMap = new Map<Id, String>();
        Set<Id> accountIdsToUpdate = new Set<Id>();

        // Identify contacts with updated phone values
        for (Contact updatedContact : newContactMap.values()) {
            Contact oldContact = oldContactMap.get(updatedContact.Id);
	
            if (oldContact != null && oldContact.Phone != updatedContact.Phone) {
                updatedContactPhoneMap.put(updatedContact.Id, updatedContact.Phone);
                accountIdsToUpdate.add(updatedContact.AccountId);
            }
        }

        if (!accountIdsToUpdate.isEmpty()) {
            // Query and update corresponding Account records
            List<Account> accountsToUpdate = [SELECT Id, Phone FROM Account WHERE Id IN :accountIdsToUpdate];
			List<Account> newAccList = new List<Account>();
            for (Account accountToUpdate : accountsToUpdate) {
                // Check if there's an updated phone value for the related Contact
                if (updatedContactPhoneMap.containsKey(accountToUpdate.Id)) {
                    // Update the phone value in the Account to reflect the Contact's phone
                    accountToUpdate.Phone = updatedContactPhoneMap.get(accountToUpdate.Id);
                    newAccList.add(accountToUpdate);
                }
            }

            // Update Account records
            if (!accountsToUpdate.isEmpty()) {
                update newAccList;
            }
        }
    }
}