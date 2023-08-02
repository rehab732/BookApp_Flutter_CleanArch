import 'package:bookbox/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewBooks();
}
