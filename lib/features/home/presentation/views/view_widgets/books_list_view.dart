import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:bookbox/features/home/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class BooksListView extends StatefulWidget {
  const BooksListView({super.key, required this.books});
  final List<BookEntity> books;

  @override
  State<StatefulWidget >createState() => _BooksListViewState();
}

class _BooksListViewState extends State<BooksListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        0.7 * _scrollController.position.maxScrollExtent) {
      BlocProvider.of<FetchBooksCubit>(context).fetchFeaturedBooks();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItem(
              image: widget.books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
