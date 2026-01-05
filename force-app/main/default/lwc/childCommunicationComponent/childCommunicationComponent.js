import { api, LightningElement, track } from 'lwc';

 

export default class childCommunicationComponent extends LightningElement {

   @track name = '';  //private

   @track email = '';

   

 

    handleNameChange(event) {

        this.name = event.target.value;

    }

 

    handleEmailChange(event) {

        this.email = event.target.value;

    }

 

    handleSubmit() {

        // Create a custom event with form data

        //click(onClick),change(onchange)

        // new CustomEvent(evenName,{detail:value});

        const customEventFromChild = new CustomEvent('formsubmit', {

            detail: {

                name: this.name,

                email: this.email

            }

        });

 

        // Dispatch the event to the parent component

        this.dispatchEvent(customEventFromChild);

    }

}