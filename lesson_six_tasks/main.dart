import 'bank.dart';

main(){
  Bank newAccount = Bank('AZ21NABZ00000000137010001944', 'Ragsana Alizada', 300);

  newAccount.getAccountInfo();
  print('-' * 20);
  newAccount.deposit(100);
  print('-' * 20);
  newAccount.withdraw(200);
}
