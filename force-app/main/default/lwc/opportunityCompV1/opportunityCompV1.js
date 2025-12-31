import { LightningElement,wire } from 'lwc';

import getAllOpportunities from '@salesforce/apex/OpportunityController.getAllOpportunities';

export default class OpportunityCompV1 extends LightningElement {

 

  //Wire the apex method to a property

  @wire(getAllOpportunities)

  oppList;

  //oppList is the property -> data and error are being injected by the LWC framework

  //oppList.data / oppList.error

}