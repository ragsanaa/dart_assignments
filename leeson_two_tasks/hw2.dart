import 'dart:io';

main() {
  stdout.writeln("Enter a sentence with at least 5 words:");
  String sentence = stdin.readLineSync().toString();
  List<String> words = sentence.split(" ");
  if (words.length < 5) {
    print("You didn't enter enough words.");
    main();
  } else {
    print("Your sentence in reverse order is:");
    for (int i = words.length - 1; i >= 0; i--) {
      stdout.write("${words[i]} ");
    }
  }
}
