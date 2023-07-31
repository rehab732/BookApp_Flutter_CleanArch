import 'package:bookbox/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class ViewHomeBody extends StatelessWidget {
  const ViewHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(
            height: 30,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestsellerListViewItem(),
        ],
      ),
    );
  }
}
