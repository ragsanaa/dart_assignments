import 'dart:math';
import 'dart:convert';

void main() {
  // random() and nextInt()
  print("Random number between 0 and 100: ");
  Random random = Random();
  print(random.nextInt(100));

  // list.generate()
  print("List of 10 even numbers: ");
  List<int> list = List.generate(10, (index) => index * 2);
  print(list);

  // base64UrlEncode()
  print("Base64 encoded string (Hello World!):");
  String encoded = base64UrlEncode(utf8.encode('Hello World!'));
  print(encoded);

  // shuffle()
  print("Shuffled list: ");
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Before shuffle: \n$numbers");
  numbers.shuffle();
  print('After shuffle: \n$numbers');
}

