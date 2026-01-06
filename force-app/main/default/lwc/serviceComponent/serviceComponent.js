// Import necessary functions from the lightning/messageService

import { createMessageContext, releaseMessageContext, publish, subscribe } from 'lightning/messageService';

import PRODUCT_MESSAGE from '@salesforce/messageChannel/productMessageChannel__c'; // custom message channel will end with __c

 

class ServiceComponent {

   

    messageContext;

    subscription;

 

    constructor() {

        // Create the message context manually when the service is instantiated

        this.messageContext = createMessageContext();

        this.subscription = null;

    }

 

    // Method to publish a message to the productMessageChannel

    publishMessage(productName) {  

        const message = { productName }; // Construct the message payload

        //publish(messageContext,LMS Message Channel,data);

        publish(this.messageContext, PRODUCT_MESSAGE, message); // Publish the message

    }

 

    // Method to subscribe to messages from the productMessageChannel

    subscribeMessage(callback) {

        // If not already subscribed, subscribe to the message channel and call the callback on message reception

        if (!this.subscription) {

            this.subscription = subscribe(this.messageContext, PRODUCT_MESSAGE, (message) => {

                callback(message); // Call the provided callback with the received message

            });

        }

    }

 

    // Clean up the message context when no longer needed

    // user defined function

    releaseContext() {

        // Release any active subscriptions associated with the messageContext

        releaseMessageContext(this.messageContext);

    }

}

 

// Export a singleton instance of the service component for use across other components

const serviceInstance = new ServiceComponent();

export default serviceInstance;

 