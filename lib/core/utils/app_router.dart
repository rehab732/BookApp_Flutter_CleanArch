import 'package:bookbox/features/home/presentation/views/book_details_view.dart';
import 'package:bookbox/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
        GoRoute(
        path: kBookDetails,
        builder: (context, state) {
          return const BookDetailsView();
        },
      ),
    ],
  );
}
