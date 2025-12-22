public with sharing class SobjectDMLDemo {
   public static void main() {
    // standard Object 
    Account acc=new Account(Phone='1234567890', Industry='Technology',AccountNumber='abcd1234');
    acc.Name='ApexSobject';
    insert acc;
    System.debug('Account created with Id: ' + acc.Id);


   }
}