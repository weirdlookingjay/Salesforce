trigger FizzBuzz on FizzBuzz__c (before insert, before update, before delete, after insert) {
    TriggerHandler handler = new FizzBuzzTriggerHandler();
    handler.run();
}