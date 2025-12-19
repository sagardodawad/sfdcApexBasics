public virtual with sharing class Notification {
    public virtual void sendNotification(String message) {
        // Simulate sending a notification
        System.debug('Notification sent: ' + message);
    }
}