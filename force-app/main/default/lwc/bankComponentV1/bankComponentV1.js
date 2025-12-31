import getBankRecords from '@salesforce/apex/BankController.getBankRecords';
import { LightningElement, wire } from 'lwc';

export default class BankComponentV1 extends LightningElement {
    @wire(getBankRecords)
    bankList;
}