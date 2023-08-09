import 'package:bloc/bloc.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_cases/fetch_featuerd_books_use_case.dart';

part 'fetch_books_state.dart';

class FetchBooksCubit extends Cubit<FetchBooksState> {
  FetchBooksCubit(this.featuredBooksUseCase) : super(FetchBooksInitial());

  final FeachFeturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FetchBooksLoading());
    var result = await featuredBooksUseCase.call();
    result.fold((fauiler) {
      emit(FetchBooksFauiler(fauiler.message));
    }, (books) {
      emit(FetchBooksSuccess(books));
    });
  }
}