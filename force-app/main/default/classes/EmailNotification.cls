public with sharing class EmailNotification extends Notification {
    public override void sendNotification(String message) {
        // Simulate sending an email notification
        System.debug('Email notification sent: ' + message);
    }   
}