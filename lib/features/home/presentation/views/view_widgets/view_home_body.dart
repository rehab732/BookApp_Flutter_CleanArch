import 'package:bookbox/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

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

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.yellow,
            image:const DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage( AssetsBookData.test)),
          ),
        ),
      ),
    );
  }
}
