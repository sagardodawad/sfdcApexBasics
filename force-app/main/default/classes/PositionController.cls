public with sharing class PositionController {
    @AuraEnabled(cacheable=true)
    public static List<Position__c> getPositionRecords(){
        return [SELECT Name,Open_Date__c,Close_Date__c,Department__c,Location__c
        FROM Position__c WITH SECURITY_ENFORCED
        ];
    }
}