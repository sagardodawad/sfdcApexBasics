public with sharing class OpportunityController {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getAllOpportunities(){
        return [SELECT Name,StageName,CloseDate,Amount
                FROM Opportunity WITH SECURITY_ENFORCED];

    }


    @AuraEnabled(cacheable=true)

    public static List<Opportunity> getWonOpportunities(){

        return [SELECT Name,StageName,CloseDate,Amount

                FROM Opportunity

                WHERE StageName = 'Closed Won'

                WITH SECURITY_ENFORCED];

               

    }

 

    @AuraEnabled(cacheable=true)

    public static List<Opportunity> getLostOpportunities(){

        return [SELECT Name,StageName,CloseDate,Amount

                FROM Opportunity

                WHERE StageName = 'Closed Lost'

                WITH SECURITY_ENFORCED];

               

    }

 

    @AuraEnabled

    public static boolean deleteOpportunity(String sid){

         Opportunity opp = new Opportunity(Id = sid);

         boolean deleteFlag=false;

         try{

              delete opp;

               deleteFlag=true;

         }catch(DMLException ex){

                throw new AuraHandledException(ex.getMessage());  

         }

         return deleteFlag;

    }

 

    @AuraEnabled(cacheable=true)

    public static List<Opportunity> get_Top10_Opportunities(){

        return [SELECT Name,StageName,CloseDate,Amount

                FROM Opportunity WITH SECURITY_ENFORCED

                LIMIT 10];

               

    }

}