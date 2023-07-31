import 'package:bookbox/core/utils/styles.dart';
import 'package:bookbox/features/home/presentation/views/view_widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class ViewHomeBody extends StatelessWidget {
  const ViewHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BooksListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
