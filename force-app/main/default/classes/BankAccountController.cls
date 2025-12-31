public with sharing class BankAccountController {
    @AuraEnabled(cacheable=true)
    public static List<Bank_Account__c> getBankAccountRecords(){
        try {
            return [
                SELECT Account_Name__c,Name,Account_Type__c,Balance__c,Bank__r.Bank_Name__c
                FROM Bank_Account__c 
                WITH SECURITY_ENFORCED
            ];
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}