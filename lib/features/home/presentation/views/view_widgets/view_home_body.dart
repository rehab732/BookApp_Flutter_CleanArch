import 'package:flutter/material.dart';
import 'books_list_view.dart';
import 'custom_app_bar.dart';

class ViewHomeBody extends StatelessWidget {
  const ViewHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), BooksListView()],
    );
  }
}
