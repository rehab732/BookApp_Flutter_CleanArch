import 'package:bookbox/constants.dart';
import 'package:bookbox/core/utils/app_router.dart';
import 'package:bookbox/core/utils/main_bloc_observer.dart';
import 'package:bookbox/features/home/data/repos/home_repo_impl.dart';
import 'package:bookbox/features/home/domain/entities/book_entity.dart';
import 'package:bookbox/features/home/domain/use_cases/fetch_featuerd_books_use_case.dart';
import 'package:bookbox/features/home/domain/use_cases/fetch_news_books_use_case.dart';
import 'package:bookbox/features/home/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:bookbox/features/home/presentation/manager/newest_books_cubit/new_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/utils/functions/setup_service_locator.dart';

void main() async {
await  Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  serviceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = MainBlocObserver();
  runApp(const BookBox());
}

final getIt = GetIt.instance;

class BookBox extends StatelessWidget {
  const BookBox({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FetchBooksCubit(FeachFeturedBooksUseCase(
              getIt.get<HomeRepoImplementation>(),
            ),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewBooksCubit(FetchNewsBooksUseCase(
              getIt.get<HomeRepoImplementation>(),
            ));
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mainColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
