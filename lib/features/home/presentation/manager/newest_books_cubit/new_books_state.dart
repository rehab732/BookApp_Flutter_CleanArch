part of 'new_books_cubit.dart';

@immutable
sealed class NewBooksState {}

final class NewBooksInitial extends NewBooksState {}

final class NewBooksLoading extends NewBooksState {}

final class NewBooksSuccess extends NewBooksState {
  final List<BookEntity> books;
   NewBooksSuccess( this.books);
}

final class NewBooksFauiler extends NewBooksState {
  final String message;
  NewBooksFauiler(this.message);
}
