import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class ViewHomeBody extends StatelessWidget {
  const ViewHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem()
      ],
    );
  }
}
