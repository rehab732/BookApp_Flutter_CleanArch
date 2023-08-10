part of 'fetch_books_cubit.dart';

@immutable
sealed class FetchBooksState {}

final class FetchBooksInitial extends FetchBooksState {}
final class FetchBooksLoading extends FetchBooksState {}
final class FetchBooksPagenationLoading extends FetchBooksState {}

final class FetchBooksFauiler extends FetchBooksState {
  final String message;
   FetchBooksFauiler( this.message);
}
final class FetchBooksSuccess extends FetchBooksState {
  final List<BookEntity> books;

  FetchBooksSuccess(this.books);
}


