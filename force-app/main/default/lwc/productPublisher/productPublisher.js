import { LightningElement, track } from 'lwc';

import serviceComponent from 'c/serviceComponent'; // Import the service component

 

export default class ProductPublisher extends LightningElement {

    @track productName = ''; // the product name entered by the user

    //@track will mark the property as Private

    // Handle input changes and update the productName property

    handleInputChange(event) {

        this.productName = event.target.value;

    }

 

    // Publish the entered product name using the service component

    publishProduct() {

        serviceComponent.publishMessage(this.productName); // Call the service component's publish method

    }

}

