import 'dart:io';

Map<String, Map> products = {
  'product_1': {
    'price': 100,
    'description': 'This is product 1'
  },
  'product_2': {
    'price': 37.9,
    'description': 'This is product 2'
  },
  'product_3': {
    'price': 20,
    'description': 'This is product 3'
  },
  'product_4': {
    'price': 49.46,
    'description': 'This is product 4'
  },
  'product_5': {
    'price': 70.4,
    'description': 'This is product 5'
  },
  'product_6': {
    'price': 60.9,
    'description': 'This is product 6'
  }
};

double totalPayment = 0;
double totalShoppingPayment = 0;
main() {
  stdout.writeln('Which is your login type: login | guest');
  String type = stdin.readLineSync().toString().toLowerCase();

  switch (type) {
    case 'login':
      login();
      break;
    case 'guest':
      welcomeSection('guest');
      break;
    default:
      print('Invalid login type!!!');
      main();
  }
}

void login(){
  stdout.writeln('Enter your username:');
  String? username = stdin.readLineSync().toString();
  stdout.writeln('Enter your password:');
  String? password = stdin.readLineSync().toString();

  if(username == 'null' || password == 'null'){
    print('Username or password cannot be empty! Try again');
    login();
  }
  else{
    welcomeSection(username);
  }

}

void welcomeSection(username){
  print('Welcome $username, enjoy your shopping!');
  productList();
  shoppingProcess();
}

void productList(){
  print('Here is the list of products:');
  for(var i = 0; i < products.length; i++){
    String key = products.keys.elementAt(i)[0].toUpperCase() + products.keys.elementAt(i).substring(1);
    print('${i+1}. ${key}');
    print('${'*' * 20}');
  }
}

void shoppingProcess(){
  stdout.writeln('Which product do you want to buy? Enter the product name:');
  String? product = stdin.readLineSync().toString().toLowerCase();
  if(products.containsKey(product)){
    print('You have selected $product');
    print('Price: ${products[product]?['price']}');
    print('Description: ${products[product]?['description']}');
    confirmShopping(product);
  }
  else{
    print('Product not found. Try again!');
    shoppingProcess();
  }
}

void confirmShopping(product){
  stdout.writeln('Do you want to buy this product? yes | no');
  String? answer = stdin.readLineSync().toString().toLowerCase();
  if(answer == 'yes'){
    totalPayment += products[product]?['price'];
    paymentProcess(product);
  }
  else if(answer == 'no'){
    print('You have not bought $product.');
    continueShopping();
  }
  else{
    print('Invalid answer. Try again!');
    confirmShopping(product);
  }
}
void paymentProcess(product){
  stdout.writeln('Which payment method do you want to use? Cash | Credit Card');
  String? payment = stdin.readLineSync().toString().toLowerCase();
  if(payment == 'cash'){
    cashMethod(product);
  }
  else if(payment == 'credit card'){
    creditCardMethod(product);
  }
  else{
    print('Invalid payment method. Try again!');
    paymentProcess(product);
  }
}

void cashMethod(product){
  stdout.writeln('Which option do you want to choose? Delivery | Pickup');
  String? option = stdin.readLineSync().toString().toLowerCase();
  switch(option){
    case 'delivery':
      totalPayment += 10;
      print('You have bought $product using cash and it will be delivered to you. \nTotal payment: $totalPayment');
      break;
    case 'pickup':
      print('You have bought $product using cash and it will be picked up by you. \nTotal payment: $totalPayment');
      break;
    default:
      print('Invalid option. Try again!');
      cashMethod(product);
  }
  print('Thank you for shopping with us!');
  continueShopping();
}

void creditCardMethod(product){
  stdout.writeln('Which option do you want to use? Direct | Installment');
  String? option = stdin.readLineSync().toString().toLowerCase();
  if(option == 'direct'){
    directPayment(product);
  }
  else if(option == 'installment'){
    installmentPayment(product);
  }
  else{
    print('Invalid option. Try again!');
    creditCardMethod(product);
  }
  print('Thank you for shopping with us!');
  continueShopping();
}

void directPayment(product){
  stdout.writeln('Enter your credit card number:');
  String? cardNumber = stdin.readLineSync().toString();
  if(cardNumber.length != 16){
    print('Invalid card number. Try again!');
    directPayment(product);
  }
  stdout.writeln('Enter your credit card expiration date: (MM/YY)');
  String? expirationDate = stdin.readLineSync().toString();
  List<String> date = expirationDate.split('/');
  int month = int.parse(date[0]);
  int year = int.parse('20${date[1]}');
  if(expirationDate.length != 5){
    print('Invalid expiration date. Try again!');
    directPayment(product);
  }
  else if(DateTime(year, month).isBefore(DateTime.now())){
    print('Your card has expired. Try again!');
    directPayment(product);
  }
  stdout.writeln('Enter your credit card CVV:');
  String? cvv = stdin.readLineSync().toString();
  if(cvv.length != 3){
    print('Invalid CVV. Try again!');
    directPayment(product);
  }
  print('Please wait while we are processing your payment...');
  print('Your payment has been processed successfully! \n Card number: ${cardNumber.substring(0, 4)} **** **** ${cardNumber.substring(12, 16)}');
  print('You have bought $product using credit card and it will be delivered to you. \nTotal payment: $totalPayment');
}

void installmentPayment(product){
  stdout.writeln('Which bank do you want to use? Birkart | Tamkart | Bolkart');
  String? bank = stdin.readLineSync().toString().toLowerCase();
  if(bank == 'birkart'){
    stdout.writeln('How many months do you want to pay? 3 | 6 | 12 | 18 | 24');
    int months = int.parse(stdin.readLineSync().toString());
    print('You have bought $product using $bank installment for $months months and it will be delivered to you. \nTotal payment: $totalPayment');
  }
  else if(bank == 'tamkart'){
    stdout.writeln('How many months do you want to pay? 3 | 6 | 12');
    int months = int.parse(stdin.readLineSync().toString());
    if(months == 12){
      totalPayment += totalPayment * 0.25;
    }
    print('You have bought $product using $bank installment for $months months and it will be delivered to you. \nTotal payment: $totalPayment');
  }
  else if(bank == 'bolkart'){
    stdout.writeln('How many months do you want to pay? 3 | 6');
    int months = int.parse(stdin.readLineSync().toString());
    if(months == 6){
      totalPayment += 10 * months;
    }
    print('You have bought $product using $bank installment for $months months and it will be delivered to you. \nTotal payment: $totalPayment');
  }
  else{
    print('Invalid bank. Try again!');
    installmentPayment(product);
  }
}

void continueShopping(){
  stdout.writeln('Do you want to continue shopping? yes | no');
  String? answer = stdin.readLineSync().toString().toLowerCase();
  if(answer == 'yes'){
    totalShoppingPayment += totalPayment;
    totalPayment = 0;
    productList();
    shoppingProcess();
  }
  else if(answer == 'no'){
    totalShoppingPayment += totalPayment;
    print('You spend $totalShoppingPayment dollars.');
    print('Thank you for visiting us!');
  }
  else{
    print('Invalid answer. Try again!');
    continueShopping();
  }
}
