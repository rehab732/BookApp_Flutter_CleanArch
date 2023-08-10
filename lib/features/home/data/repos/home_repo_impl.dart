import 'package:bookbox/core/errors/failure.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:bookbox/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../data_sources/home_local_data_source.dart';
import '../data_sources/home_remote_data_source.dart';

class HomeRepoImplementation extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource localDataSource;

  HomeRepoImplementation(
      {required this.homeRemoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchBooks({int pageNumber=0}) async {
    try {
      var booksList = localDataSource.fetchBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.fetchBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliuer.fromDioError(e));
      }
      return left(ServerFaliuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks() async {
    try {
      var booksList = localDataSource.fetchNewBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.fetchNewBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliuer.fromDioError(e));
      }
      return left(ServerFaliuer(e.toString()));
    }
  }
}
