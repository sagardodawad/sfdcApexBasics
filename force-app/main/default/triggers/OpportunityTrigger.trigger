trigger OpportunityTrigger on Opportunity (before delete) {
    OpportunityTriggerHandler.preventClosedWonStageDeleteion(Trigger.old);
}