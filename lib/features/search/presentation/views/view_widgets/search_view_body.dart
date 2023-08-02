import 'package:bookbox/core/utils/styles.dart';
import 'package:bookbox/features/search/presentation/views/view_widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_feild.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResult(),
          ),
        ],
      ),
    );
  }
}
