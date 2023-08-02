import 'package:bookbox/core/utils/styles.dart';
import 'package:bookbox/features/home/presentation/views/view_widgets/book_rating.dart';
import 'package:bookbox/features/home/presentation/views/view_widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_list_view.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    //TODORemove singlechildscrollview while run on mobile
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const CustomListViewItem(),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            const BooksAction(),
            const SizedBox(
              height: 50,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You Can also like',
                  style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white),
                )),
            const SimilarBookListView()
          ],
        ),
      ),
    );
  }
}
