import 'dart:io';

main() {
  stdout.writeln("Enter your name:");
  String name = stdin.readLineSync().toString();
  stdout.writeln("Enter your age:");
  int age = int.parse(stdin.readLineSync().toString());
  int one_hundred = (100 - age) + DateTime.now().year;

  print("Hello $name, you will be 100 years old in $one_hundred");
}
