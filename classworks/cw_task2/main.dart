import 'dart:io';

import 'book.dart';
import 'library.dart';

Library myLibrary = Library();
Map <int, String> genres = myLibrary.genres;

main(){
  myLibrary.addBook("Inferno", "Dan Brown", "2013",  200.99, "sci-fi");
  myLibrary.addBook("Treasure Island", "Robert Louis Stevenson", "1883", 100, "adventure");
  myLibrary.addBook("My Man Jeeves", "Pelham Grenville Wodehouse", "1919", 26.79, "thriller");
  myLibrary.addBook("The Return of Tarzan", "Edgar Rice Burroughs", "1913", 56.90, "fiction");
  myLibrary.addBook("Tarzan of the Apes", "Edgar Rice Burroughs", "1912", 34.90, "fiction");

  startProcess();
  while(true){
    print("Do you want to continue? Yes (y) | No (n)");
    String flag = stdin.readLineSync().toString().toLowerCase();
    if(flag == 'y') startProcess();
    else{
      print("Bye!");
      break;
    }
  }
}

void startProcess(){
  stdout.writeln("Please choose your command: Add Book (1) | Display Books (2) | Search by Option (3)");
  int command = int.parse(stdin.readLineSync().toString());
  switch (command) {
    case 1:
      addBook();
      break;
    case 2:
      print("All Books in Library: ");
      myLibrary.displayBook();
      break;
    case 3:
      print("Please choose your search option: Title (1) | Author (2) | Genre (3) | Price (4) | Year (5)");
      int option = int.parse(stdin.readLineSync().toString());
      searchBook(option);
      break;
    default:
      print("Invalid Command!");
  }
}

void addBook(){
  stdout.writeln("Please write book info: ");
  stdout.write("Title: ");
  String bookTitle = stdin.readLineSync().toString();
  stdout.write("Author: ");
  String bookAuthor = stdin.readLineSync().toString();
  stdout.write("Published Year: ");
  String bookYear = stdin.readLineSync().toString();
  stdout.write("Price: ");
  double bookPrice = double.parse(stdin.readLineSync().toString());
  stdout.write("Genre: ");
  String bookGenre = stdin.readLineSync().toString();

  myLibrary.addBook(bookTitle, bookAuthor, bookYear, bookPrice, bookGenre);
}

void searchBook(int option){
  List<Book> findBook = [];
  switch (option) {
    case 1:
      stdout.writeln("Please write book's title: ");
      String title = stdin.readLineSync().toString();
      findBook = myLibrary.searchByTitle(title.toLowerCase());
      break;
    case 2:
      stdout.writeln("Please write book's author: ");
      String author = stdin.readLineSync().toString();
      findBook = myLibrary.searchByAuthor(author.toLowerCase());
      break;
    case 3:
      stdout.writeln("Please write book's genre: ");
      String genre = stdin.readLineSync().toString();
      findBook = myLibrary.searchByGenre(genre.toLowerCase());
      break;
    case 4:
      stdout.writeln("Please write price range: ");
      stdout.write("Min: ");
      double min = double.parse(stdin.readLineSync().toString());
      stdout.write("Max: ");
      double max = double.parse(stdin.readLineSync().toString());
      findBook = myLibrary.searchByPrice(min, max);
      break;
    case 5:
      stdout.writeln("Please write book's year: ");
      String year = stdin.readLineSync().toString();
      findBook = myLibrary.searchByYear(year);
      break;
    default:
      print("Invalid option!");
  }
  print("Search Result: \n");
  if(findBook.length > 0){
    for (Book book in findBook) {
    print("Title: ${book.title} \n Author: ${book.author} \n Published: ${book.publicationYear} \n Genre: ${genres[book.genre].toString()} \nPrice: ${book.price}");
    }
  } else{
    print("No Books!");
  }
}
