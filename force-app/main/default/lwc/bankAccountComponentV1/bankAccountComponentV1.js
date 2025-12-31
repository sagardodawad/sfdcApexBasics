import getBankAccountRecords from '@salesforce/apex/BankAccountController.getBankAccountRecords';
import { LightningElement, wire } from 'lwc';

export default class BankAccountComponentV1 extends LightningElement {
    @wire(getBankAccountRecords)
    bankAccountsList;
}