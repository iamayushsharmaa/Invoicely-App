import 'package:dio/dio.dart';

Dio createDioClient(String baseUrl) {
  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  return dio;
}