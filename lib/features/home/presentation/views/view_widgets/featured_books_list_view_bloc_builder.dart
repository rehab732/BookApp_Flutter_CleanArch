import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:bookbox/features/home/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_list_view.dart';

class FeaturedBooksListViewBlocBuilder extends StatefulWidget {
  const FeaturedBooksListViewBlocBuilder({
    super.key,
  });

  @override
  State<FeaturedBooksListViewBlocBuilder> createState() =>
      _FeaturedBooksListViewBlocBuilderState();
}

class _FeaturedBooksListViewBlocBuilderState
    extends State<FeaturedBooksListViewBlocBuilder> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchBooksCubit, FetchBooksState>(
      listener: (context, state) {
        if (state is FetchBooksSuccess) {
          books.addAll(state.books);
        }
      },
      builder: (context, state) {
        if (state is FetchBooksSuccess ||
            state is FetchBooksPagenationLoading) {
          return BooksListView(
            books: books,
          );
        } else if (state is FetchBooksFauiler) {
          return Text(state.message);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
