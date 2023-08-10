import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FeachFeturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FeachFeturedBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([int p=0]) async {
    return await homeRepo.fetchBooks(pageNumber:p);
    

  }
}
