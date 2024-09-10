import 'package:dio/dio.dart';

class Api {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  Api(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
