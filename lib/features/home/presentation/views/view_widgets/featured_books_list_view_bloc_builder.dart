import 'package:bookbox/features/home/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_list_view.dart';

class FeaturedBooksListViewBlocBuilder extends StatelessWidget {
  const FeaturedBooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBooksCubit, FetchBooksState>(
      builder: (context, state) {
        if (state is FetchBooksSuccess) {
          return const BooksListView();
        } else if (state is FetchBooksFauiler) {
          return Text(state.message);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
