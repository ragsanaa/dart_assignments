class Bank{
  late final String iban;
  late final String fullname;
  late double balance;

  Bank(this.iban, this.fullname, this.balance);

  void getAccountInfo(){
    print("Account info: \n IBAN: $iban, \n Fullnam: $fullname, \n Balance: $balance");
  }

  void deposit(double amount){
    balance += amount;
    print("Deposit: $amount\n New balance: $balance");
  }

  void withdraw(double amount){
    if(balance >= amount){
      balance -= amount;
      print("Withdraw: $amount\n New balance: $balance");
    }else{
      print("Not enough money \n Current balance: $balance");
    }
  }
}
