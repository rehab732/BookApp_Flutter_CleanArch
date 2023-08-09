import 'package:bloc/bloc.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_cases/fetch_news_books_use_case.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.fetchNewsBooksUseCase) : super(NewBooksInitial());
  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(NewBooksLoading());
    var result = await fetchNewsBooksUseCase.call();
    result.fold((fauiler) {
      emit(NewBooksFauiler(fauiler.message));
    }, (books) {
      emit(NewBooksSuccess(books));
    });
  }

}
