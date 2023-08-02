import 'dart:convert';

import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String url = "https://www.googleapis.com/books/v1/";

  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$url$endpoint');
    return response.data;
  }
}
