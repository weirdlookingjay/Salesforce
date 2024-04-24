public with sharing class DemoCtrl {
    public static List<Account> getAccountsFilteredByType(String accountType) {
        return [SELECT Id, Name FROM Account WHERE Type = :accountType];
    }

    public static List<Account> getAccountsFilteredByName(String accountName) {
        return [SELECT Id, Name FROM Account WHERE Name = :accountName];
    }

    public static void createCase(String subject, Id accountId) {
        Case newCase = new Case();
        newCase.Subject = subject;
        newCase.AccountId = accountId;
        insert newCase;
    }
}