import { LightningElement, track } from 'lwc';

import serviceComponent from 'c/serviceComponent'; // Import the service component

 

export default class ProductSubscriber extends LightningElement {

    @track products = []; // the list of products

 

    connectedCallback() {

        // Subscribe to the message channel when the component is initialized

        serviceComponent.subscribeMessage((message) => {

            this.handleMessage(message); // Handle incoming messages

        });

    }

 

    // Update the product list when a message is received

    handleMessage(message) {

        if (message.productName) {

            //sum=sum+1;

            this.products = [...this.products, message.productName]; // Add the new product to the list

        }  

    }

 

    disconnectedCallback() {

        // Clean up the message context when the component is destroyed

        serviceComponent.releaseContext();

    }

}

 