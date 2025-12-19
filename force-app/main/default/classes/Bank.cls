public class Bank implements IBankServiceProvider {
    public Boolean deposit(String accountNumber, Double amount) {
        // Simulate deposit operation
        System.debug('Deposited ' + amount + ' to account ' + accountNumber);
        return true;
    }
    public Boolean withdraw(String accountNumber, Double amount) {
        // Simulate withdraw operation
        System.debug('Withdrew ' + amount + ' from account ' + accountNumber);
        return true;
    }
    public Boolean transfer(String fromAccount, String toAccount, Double amount) {
        // Simulate transfer operation
        System.debug('Transferred ' + amount + ' from account ' + fromAccount + ' to account ' + toAccount);
        return true;    }
}