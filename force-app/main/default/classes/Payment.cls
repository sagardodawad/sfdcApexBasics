public with sharing class Payment {
    public void processPayment(Integer amount) {
        // Simulate payment processing
        System.debug('Processing payment of amount: ' + amount);
    }
    public void processPayment(Integer amount, String processMethod) {
        // Simulate payment processing with currency
        System.debug('Processing payment of amount: ' + amount + ' via ' + processMethod);
    }
    public void processPayment(Integer amount,String processMethod, Integer discount) {
        // Simulate payment processing with discount
        System.debug('Processing payment of amount: ' + amount + ' via ' + processMethod + ' with discount: ' + discount);
    }
}