public with sharing class BankController {
//     public static void main(){

//       //  //insert banks
//         // Bank__c sbi=new Bank__c(Bank_Name__c='State Bank of India',Name='SBIN0000456');    
//         // insert sbi;
//         // Bank__c axis=new Bank__c(Bank_Name__c='Axis Bank',Name='AXIS0000456');    
//         // insert axis;
//         // Bank__c hdfc=new Bank__c(Bank_Name__c='HDFC Bank',Name='HDFC0000456');    
//         // insert hdfc;
//         // Bank__c icici=new Bank__c(Bank_Name__c='ICICI Bank',Name='ICICI0000456');    
//         // insert icici;


//         // //update banks
//         // Bank__c sbi=new Bank__c(Id='a0NgK00002qmsyPUAQ');
//         // sbi.Bank_Name__c='State Bank';
//         // update sbi;
        
//         // //delete banks
//         // Bank__c axis=new Bank__c(Id='a0NgK00002qmsyQUAQ');
//         // delete axis;



// // //insert bank account
// //      Bank_Account__c account1=new Bank_Account__c(Account_Name__c='John Doe',Name='ACC0001',Balance__c=5000,Account_Type__c='Saving');
// //      account1.Bank__c='a0NgK00002qmsyPUAQ'; 
// //      insert account1;


// //      Bank_Account__c account2=new Bank_Account__c(Account_Name__c='Jane Doe',Name='ACC0002',Balance__c=10000,Account_Type__c='Saving');
// //      account2.Bank__c='a0NgK00002qmsyRUAQ';
// //         insert account2;

//     //  //update account
//     // Bank_Account__c account2=new Bank_Account__c(Id='a0MgK000000IS5uUAG');
//     // account2.Balance__c=15000;
//     // update account2;

//     //delete account
//     Bank_Account__c account1=new Bank_Account__c(Id='a0MgK000000IS5tUAG');
//      delete account1;

//     }

@AuraEnabled(cacheable=true)
public static List<Bank__c> getBankRecords(){
  try {
    return [
      SELECT Bank_Name__c,Name
      FROM Bank__c
      WITH SECURITY_ENFORCED
    ];
    
  } catch (Exception e) {
    throw new AuraHandledException(e.getMessage());
  }
}
}