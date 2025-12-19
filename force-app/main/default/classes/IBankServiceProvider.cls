public interface IBankServiceProvider {
   Boolean deposit(String accountNumber, Double amount); 
   Boolean withdraw(String accountNumber, Double amount); 
   Boolean transfer(String fromAccount, String toAccount, Double amount);
}