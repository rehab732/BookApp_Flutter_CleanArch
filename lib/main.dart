import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookBox());
}

class BookBox extends StatelessWidget {
  const BookBox({super.key});
  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp();
  }
}
