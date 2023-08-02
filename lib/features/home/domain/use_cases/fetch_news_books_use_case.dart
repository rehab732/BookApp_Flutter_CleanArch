import 'package:bookbox/core/errors/failure.dart';
import 'package:bookbox/core/use_cases/use_case.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:bookbox/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewsBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? p]) async {
    return await homeRepo.fetchNewBooks();
  }
}
