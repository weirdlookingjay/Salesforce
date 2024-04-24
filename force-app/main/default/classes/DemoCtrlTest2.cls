@IsTest
public class DemoCtrlTest2 {

    @TestSetup
    static void createTestData(){
        system.debug('Start of Test Setup method');
        system.debug('DML statments consumed = ' + Limits.getDMLStatements() +' of '+ Limits.getLimitDmlStatements());

        // Create test data
       Test.loadData(Account.sobjectType, 'Mock_Account_Data');

       system.debug('DML statements consumed after Test.loadData = ' + Limits.getDMLStatements() +' of '+ Limits.getLimitDmlStatements());
    }

    @IsTest
    static void testCaseCreation() {
        system.debug('Start of Test Method');
        system.debug('DML statements consumed = ' + Limits.getDMLStatements() +' of '+ Limits.getLimitDmlStatements());

        List<Account> testAccounts = [select Id, Name from Account LIMIT 3];
        // Create test contacts
        List<Contact> testContacts = new List<Contact>{
            new Contact(LastName = 'Test 1', AccountId = testAccounts[0].Id),
            new Contact(LastName = 'Test 2', AccountId = testAccounts[1].Id),
            new Contact(LastName = 'Test 3', AccountId = testAccounts[2].Id)
        };
        insert testContacts;

        system.debug('DML statements consumed after data insertion = ' + Limits.getDmlStatements() +' of ' + Limits.getLimitDmlStatements());

        Test.startTest();

        system.debug('DML statements consumed at the beginning of Test.startTest() = ' + Limits.getDmlStatements() +' of ' + Limits.getLimitDmlStatements());
        DemoCtrl.createCase('Test Subject', testAccounts[0].Id);
        DemoCtrl.createCase('Test another subject', testAccounts[1].Id);
        DemoCtrl.createCase('Test another another subject', testAccounts[2].Id);
        system.debug('DML statements consumed before Test.stopTest() = ' + Limits.getDmlStatements() +' of ' + Limits.getLimitDmlStatements());

        Test.stopTest();

        system.debug('DML statements consumed at the beginning of Test.startTest() = ' + Limits.getDmlStatements() +' of ' + Limits.getLimitDmlStatements());

    }
}