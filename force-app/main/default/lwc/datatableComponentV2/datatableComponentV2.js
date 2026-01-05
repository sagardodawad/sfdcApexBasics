
import { LightningElement,wire } from 'lwc';

import getAllAccounts from '@salesforce/apex/AccountController.getAllAccounts';

import deleteAccount from '@salesforce/apex/AccountController.deleteAccount';

import { refreshApex } from '@salesforce/apex';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Success_kannada from '@salesforce/label/c.Success_In_kannada';
import kannada_MESSAGE from '@salesforce/label/c.kannadaErrorMessage';


const actions = [

       

    { label: 'Delete'/*Action Label*/, name: 'delete'/*actionName*/ },

    { label:'Edit', name:'rowedit'}

];

export default class DatatableWithActions extends LightningElement {

    @wire(getAllAccounts)

    accounts;

     

    columns=[

        { label: 'Account Name', fieldName: 'Name', type: 'text' },

        { label: 'Account Number', fieldName: 'AccountNumber', type: 'text' },

        { label: 'Phone Number', fieldName: 'Phone', type: 'phone' },

        { label: 'Action',type: 'action',

         typeAttributes: { rowActions: actions }}

    ];

 

    handleRowSelection(event){

        const actionName = event.detail.action.name;

        const row = event.detail.row;

        console.log(row.Name);

        if (actionName=='delete') {        

          deleteAccount({accId:row.Id})  // AccountController method imperative call

            .then((result)=>{

                //alert('Record deleted Successfully');

                let msg=new ShowToastEvent({ title:'Information', message:Success_kannada});

                this.dispatchEvent(msg);

                //this.dispatchEvent(msg);

            refreshApex(this.accounts);   // refresh apex

            })

            .catch((error)=>{

                let errMsg=new ShowToastEvent({ title:'Error', message:kannada_MESSAGE,variant:'error'});

                this.dispatchEvent(errMsg);

            console.log('Error refreshing data.'+error.body.message);

            });

        }else if(actionName=='rowedit'){

            //alert('Edit action is yet to be defined...');

             let information=new ShowToastEvent({ title:'Warning', message:'Edit Action is comming soon...',variant:'warning'});

                this.dispatchEvent(information);

        }

       

     }

   

}