class BankAccount{

  int id;
  double balance;

  BankAccount(this.id, this.balance);

  BankAccount.defaultZero(){
    balance = 0;
  }

  void withdraw(int money){
    if(balance >= money){
      balance-=money;
      print("withdraw $money and now your balance is $balance");
    }else{
      print(" your balance is not enough ");
    }
  }

  void deposit(int money){
    balance+=money;
    print("you enter $money and your balance is $balance");
  }
}

void main(){
  BankAccount acc = BankAccount(5041, 54040);
  acc.deposit(960);
  acc.withdraw(55000);
  acc.withdraw(1000);
  BankAccount acc2 = BankAccount.defaultZero();
  print(acc2.balance);
}