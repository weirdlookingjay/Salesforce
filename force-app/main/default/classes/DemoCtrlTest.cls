@IsTest
public class DemoCtrlTest {

    @TestSetup
    static void createTestData(){
       Test.loadData(Account.sobjectType, 'Mock_Account_Data');
    }

    @IsTest
    static void testAccountFilterByType() {
        // Create test data
        List<Account> accounts = DemoCtrl.getAccountsFilteredByType('Customer - Direct');
        Assert.areEqual('Fake Company 1', accounts[0].Name);
        Assert.areEqual('Fake Company 2', accounts[1].Name);
    }

    @IsTest
    static void testAccountFilterByName() {
        // Create test data
        List<Account> accounts = DemoCtrl.getAccountsFilteredByName('Fake Company 1');
        Assert.areEqual(1, accounts.size(), 'Account: Fake Company 1 Exists');        
    }
}