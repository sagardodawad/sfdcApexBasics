public with sharing class PositionTriggerHandler {
    public static void updatePositionStatus(List<Position__c> positionList){
        for (Position__c position : positionList) {
            position.Status__c = 'New';
        }
    }
    public static void preventOpenPositiondeletion(List<Position__c> positionList){
        for (Position__c position : positionList) {
            if(position.Status__c == 'Open'){
                position.addError('Open positions cannot be deleted.');
            }
        }
    }
}