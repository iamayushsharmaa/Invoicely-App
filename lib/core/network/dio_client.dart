import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'interceptors/auth_interceptor.dart';
import 'interceptors/log_interceptor.dart';

class DioClient {
  static Dio create(FlutterSecureStorage storage) {
    final options = BaseOptions(
      baseUrl: dotenv.env["BASE_URL"] ?? "http://192.168.1.5:8080/",
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    );

    final dio = Dio(options);

    dio.interceptors.addAll([
      AuthInterceptor(dio, storage),
      AppLogInterceptor(),
    ]);
    return dio;
  }
}
