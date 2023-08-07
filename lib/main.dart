import 'package:bookbox/constants.dart';
import 'package:bookbox/core/utils/app_router.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const BookBox());

  Hive.registerAdapter(BookEntityAdapter());
await  Hive.openBox(kFeaturedBox);

}

class BookBox extends StatelessWidget {
  const BookBox({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mainColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
