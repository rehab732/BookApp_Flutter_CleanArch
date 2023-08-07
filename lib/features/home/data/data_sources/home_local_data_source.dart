
import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBooks();
   List<BookEntity> fetchNewBooks();
}
class HomeLocalDataSourceImplementation extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchBooks() {
    // TODO: implement fetchBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewBooks() {
    // TODO: implement fetchNewBooks
    throw UnimplementedError();
  }

}