trigger AccountAddressTrigger on Account (before insert, before update) {
    AccountTriggerHandler.checkAddressCondition(Trigger.new);
}