import 'dart:io';
import 'dart:math';
import 'dart:convert';

main(){
  print("Random password generator");
  stdout.writeln("Enter strength of password (1-3): 1-weak, 2-medium, 3-strong");
  int strength = int.parse(stdin.readLineSync().toString());
  String password = "";
  switch(strength){
    case 1:
      password = generatePasswordWeak();
      break;
    case 2:
      password = generatePasswordMedium();
      break;
    case 3:
      password = generatePasswordStrong();
      break;
    default:
      print("Invalid strength");
      break;
  }
  print("Your password is: $password");
}

//Random() List.generate() nextInt() base64UrlEncode() shuffle()
// use the above functions to generate a password for the user. There are 3 choices for the user to choose from: weak, medium, strong. Password generated randomly and shouldn't be the same every time.

String generatePasswordWeak(){
  Random random = Random();
  List<int> list = List.generate(8, (index) => random.nextInt(10));
  list.shuffle();
  String password = list.join();
  return password;
}

String generatePasswordMedium() {
  List<String> lowerLetters = List.generate(26, (index) => String.fromCharCode(index + 97));
  List<String> upperLetters = List.generate(26, (index) => String.fromCharCode(index + 65));
  List<String> allLetters = lowerLetters + upperLetters;
  allLetters.shuffle();
  List<String> digits = List.generate(10, (index) => index.toString());
  Random random = Random();
  List<String> letterPart = List.generate(8, (index) => allLetters[random.nextInt(26*2)]);
  List<String> digitPart = List.generate(8, (index) => digits[random.nextInt(10)]);
  List<String> passwordList = letterPart + digitPart;
  passwordList.shuffle();
  String password = passwordList.join();
  return password;
}

String generatePasswordStrong(){
  List<String> allCharacters = List.generate(94, (index) => String.fromCharCode(index + 33));
  Random random = Random();
  List<String> passwordList = List.generate(32, (index) => allCharacters[random.nextInt(94)]);
  passwordList.shuffle();
  String password = passwordList.join();

  return base64UrlEncode(utf8.encode(password));
}

