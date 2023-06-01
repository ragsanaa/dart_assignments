import 'book.dart';

class Library{
  late List<Book> books = [];
  late Map<int, String> genres = {1: 'fiction', 2: 'adventure', 3: 'comic', 4: 'drama', 5: 'sci-fi', 6: 'thriller'};

  Library();

  void addBook(String title, String author, String publicationYear, double price, String bookGenre){
    int genre;
    if(genres.containsValue(bookGenre)){
      genre = genres.keys.firstWhere((key) => genres[key] == bookGenre);
    } else{
      genres.addAll({genres.length: bookGenre});
      genre = genres.length;
    }
    Book book = Book(title, author, publicationYear, price, genre);
    books.add(book);
  }

  List<Book> searchByTitle(String title){
    List<Book> findedBooks = [];
    for (Book book in books) {
      if(book.title.toLowerCase().contains(title)){
        findedBooks.add(book);
      } else{
        continue;
      }
    }
    return findedBooks;
  }

  List<Book> searchByAuthor(String author){
    List<Book> findedBooks = [];
    for (Book book in books) {
      if(book.author.toLowerCase().contains(author)){
        findedBooks.add(book);
      } else{
        continue;
      }
    }
    return findedBooks;
  }

  List<Book> searchByYear(String year){
    List<Book> findedBooks = [];
    for (Book book in books) {
      if(book.publicationYear == year){
        findedBooks.add(book);
      } else{
        continue;
      }
    }
    return findedBooks;
  }

  List<Book> searchByGenre(String bookGenre){
    List<Book> findedBooks = [];
    if(genres.containsValue(bookGenre)){
      int genre = genres.keys.firstWhere((key) => genres[key] == bookGenre);
      for (Book book in books) {
      if(book.genre == genre){
        findedBooks.add(book);
      } else{
        continue;
      }
    }
    }

    return findedBooks;
  }

  List<Book> searchByPrice(double min, double max){
    List<Book> findedBooks = [];
    for (Book book in books) {
      if(book.price >= min && book.price <= max){
        findedBooks.add(book);
      } else{
        continue;
      }
    }
    return findedBooks;
  }

  void displayBook(){
    for(int i=0; i<books.length;i++){
      String genre = genres[books[i].genre].toString();
      print("${i+1}. \n Title: ${books[i].title} \n Author: ${books[i].author} \n Published: ${books[i].publicationYear} \n Genre: ${genre} \n Price: ${books[i].price}");
    }
  }
}
