import 'package:bookbox/constants.dart';
import 'package:bookbox/core/utils/api_service.dart';
import 'package:bookbox/features/home/data/models/book_model/book_model.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart'; 
import '../../../../core/utils/functions/sava_data.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchBooks();
  Future<List<BookEntity>> fetchNewBooks();
}

class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImplementation(this.apiService);
  @override
  Future<List<BookEntity>> fetchBooks() async {
    var data = await apiService.get(
        endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<BookEntity> books = getBooksList(data);

    saveBooksData(books,kFeaturedBox);
    return books;
  }


  @override
  Future<List<BookEntity>> fetchNewBooks() async {
    var data = await apiService.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books,kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
