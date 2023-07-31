
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/view_widgets/best_seller_list_view_item.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            child:  BestsellerListViewItem(),
          );
        });
  }
}