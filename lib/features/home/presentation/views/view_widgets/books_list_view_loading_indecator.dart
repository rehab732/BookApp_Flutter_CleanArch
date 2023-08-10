import 'package:bookbox/core/widgets/custom_fading_animation.dart';
import 'package:bookbox/features/home/presentation/views/view_widgets/custom_book_item_loading_indecator.dart';
import 'package:flutter/material.dart';

class BookListViewLoadingIndecator extends StatelessWidget {
  const BookListViewLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8),
              child:CustomBookItemLoadingIndecator()
            );
          },
        ),
      ),
    );
  }
}