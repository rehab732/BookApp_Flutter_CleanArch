import 'package:bookbox/features/home/presentation/views/view_widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ViewHomeBody(),
    );
  }
}
