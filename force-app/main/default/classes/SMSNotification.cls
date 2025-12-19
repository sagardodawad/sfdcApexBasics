public with sharing class SMSNotification extends Notification {
    public override void sendNotification(String message) {
        // Simulate sending an SMS notification
        System.debug('SMS notification sent: ' + message);
    }
}