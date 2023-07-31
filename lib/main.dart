import 'package:bookbox/constants.dart';
import 'package:bookbox/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookBox());
}

class BookBox extends StatelessWidget {
  const BookBox({super.key});
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.mainColor) ,
      home:const SplashView(),
    );
  }
}
