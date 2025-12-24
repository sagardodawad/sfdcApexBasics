public with sharing class OpportunityTriggerHandler {
  public static void preventClosedWonStageDeleteion(List<Opportunity>opportunities){
    for (Opportunity opp : opportunities) {
        if (opp.StageName == 'Closed Won') {
            opp.addError('You cannot delete an Opportunity with Closed Won stage.');   
        }
        
    }
  }
}