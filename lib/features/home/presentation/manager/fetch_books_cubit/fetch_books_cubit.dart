import 'package:bloc/bloc.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'fetch_books_state.dart';

class FetchBooksCubit extends Cubit<FetchBooksState> {
  FetchBooksCubit() : super(FetchBooksInitial());
}
