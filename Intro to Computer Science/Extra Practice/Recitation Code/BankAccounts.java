public class BankAccounts {

		private String checkingsName;
		private String savingsName;
		private double checkingsBalance;
		private double savingsBalance;

		public BankAccounts (String checkingNameInput, String savingsNameInput, double checkingsBalanceInput, double savingsBalanceInput) {
			this.checkingsName = checkingNameInput;
			this.savingsName = savingsNameInput;
			this.checkingsBalance = checkingsBalanceInput;
			this.savingsBalance = savingsBalanceInput; 
		}

		public BankAccounts (String checkingNameInput, String savingsNameInput) {
			this.checkingsName = checkingNameInput;
			this.savingsName = savingsNameInput;
			this.checkingsBalance = 0.0;
			this.savingsBalance = 0.0;
		}

		public static void withdraw(double amount, String accountName) {
			if (accountName == checkingsName) {
				if (amount > checkingsBalance) {
					System.out.println("Not enough money in Checkings Account to withdraw desired amount.");
					return;
				}
				checkingsBalance -= amount;
			}
			else {
				if (amount > savingsBalance) {
					System.out.println("Not enough money in Savings Account to withdraw desired amount.");
					return;
				}
				savingsBalance -= amount;
			}
		}

		public static void deposit(double amount, String accountName) {
			if (accountName == checkingsName) {
				checkingsBalance += amount;
			}
			else {
				savingsBalance += amount;
			}
		}

		// Transfers money FROM the first specified account TO the second specified account.
		public static void transfer(double amount, String accountName1, String accountName2) {
			if (accountName1 == checkingsName) {
				if (amount > checkingsBalance) {
					System.out.println("Not enough money in Checkings Account to transfer desired amount.");
					return;
				}
				checkingsBalance -= amount;
				savingsBalance += amount;
			}
			else {
				if (amount > savingsBalance) {
					System.out.println("Not enough money in Savings Account to transfer desired amount.");
					return;
				}
				savingsBalance -= amount;
				checkingsBalance += amount;
			}
		}

}

// public class BankAccount{

// 	//instance variables
// 	private String accountNumber;
// 	public String name;
// 	private String address;
// 	private double balance;

// 	//constructor 1
// 	public BankAccount(String acctnum, String name, String addr){

// 		this.accountNumber = acctnum;
// 		this.name = name;
// 		this.address = addr;
// 		this.balance = 0;
// 	}

// 	//constructor 2
// 	public BankAccount(String acctnum, String name, String addr, double initialDeposit){

// 		this.accountNumber = acctnum;
// 		this.name = name;
// 		this.address = addr;
// 		this.balance = initialDeposit;
// 	}

// 	public boolean depositMoney(double amount){

// 		if(amount > 0){
// 			this.balance += amount;
// 			return true;
// 		}
// 		return false;
// 	}

// 	public boolean withdrawMoney(double amount){

// 		if(amount > 0  &&  this.balance >= amount){
// 			this.balance -= amount;
// 			return true;
// 		}
// 		return false;
// 	}

// 	public static boolean transferMoney(BankAccount from, BankAccount to, double amount){

// 		if(from.withdrawMoney(amount)){
// 			to.depositMoney(amount);
// 			return true;
// 		}
// 		return false;
// 	}

// 	public String toString(){
// 		return this.accountNumber + " - " + this.name + ": $" + this.balance;
// 	}

// 	public boolean equals(BankAccount other){

// 		if(this.accountNumber.equals(other.accountNumber)){
// 			return true;
// 		}
// 		return false;
// 	}

// 	public String getAccountNumber(){ 
// 		return this.accountNumber;
// 	}
	
// 	public String getAddress(){ 
// 		return this.address;
// 	}

// 	public void setAddress(String newAddress){
// 		this.address = newAddress;
// 	}
	
// 	public double getBalance(){ 
// 		return this.balance;
// 	}
// }

// Data needed: Customer name, Account number, Customer address, Account balance
// Common Operations: deposit, withdraw, check balance, transfer to another account, getting account number, address, etc.

// Some examples of ways to potentially break a bank account:
// Depositing a negative amount
// Withdrawing a negative amount
// Transfering to a null account
// Depositing >= $264 if using integers (why is this problematic?)