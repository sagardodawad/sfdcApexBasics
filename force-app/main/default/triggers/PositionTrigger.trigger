// trigger PositionTrigger on Position__c (before insert,after insert,before update, after update) {
//     System.debug('New:' + Trigger.new);
//     System.debug('Old:' + Trigger.old);
//     System.debug('Old Map:' + Trigger.oldMap);
//     System.debug('New Map:' + Trigger.newMap);
// }

trigger PositionTrigger on Position__c (before insert,before delete) {
    if (trigger.isBefore) {
    if(trigger.isInsert)
    PositionTriggerHandler.updatePositionStatus(Trigger.new);
    if (trigger.isDelete) {
        PositionTriggerHandler.preventOpenPositiondeletion(Trigger.old);
    }
    }
   
}