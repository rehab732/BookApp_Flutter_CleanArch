import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';
import '../repos/home_repo.dart';

class FeachFeturedBooksUseCase {
  final HomeRepo homeRepo;

  FeachFeturedBooksUseCase(this.homeRepo);
  Future<Either<Failure,List<BookEntity>>>fetchBooks(){

    //additional code 
    return homeRepo.fetchBooks();
  }

  
}
