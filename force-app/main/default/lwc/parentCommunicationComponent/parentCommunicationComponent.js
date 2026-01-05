import { LightningElement ,track} from 'lwc';

export default class ParentCommunicationComponent extends LightningElement {

    @track formData = null;

 

    handleFormSubmit(event) {

        // Receive data from the child component

        this.formData = event.detail;

    }

}