trigger CandidateTrigger on Candidate__c (before insert, before update) {
    System.debug('new:' + Trigger.new);
    System.debug('old:' + Trigger.old);
    
    // System.debug('new:' + Trigger.new.get(0).First_Name__c);
    // System.debug('old:' + Trigger.old.get(0).First_Name__c);

}