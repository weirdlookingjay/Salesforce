trigger ClosedOpportunityTrigger on Opportunity (after update, after insert) {
    OpportunityTriggerHandler handler = new OpportunityTriggerHandler();
    handler.createTaskOnClsoedWon(Trigger.new);
}