import 'dart:io';

main() {
  stdout.writeln("Enter a sentence with comma:");
  String sentence = stdin.readLineSync().toString();
  List<String> words = sentence.split(",");
  for(int i = 0; i < words.length; i++) {
    stdout.write("${words[i]} ");
  }

  print('\n${'-' * 20}');

  List<String> reversed_words = words.reversed.toList();
  for(int i = 0; i < reversed_words.length; i++) {
    stdout.write("${reversed_words[i]} ");
  }

  print('\n${'-' * 20}');

  String joined_words = words.join(' & ');
  print(joined_words);
}
