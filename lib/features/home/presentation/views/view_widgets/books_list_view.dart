import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key,required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  Padding(
              padding:const EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItem(
                image: books[index].image ?? '',
              ),
            );
          }),
    );
  }
}
