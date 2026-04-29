import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _storage;
  final Dio _dio;

  AuthInterceptor(this._dio, this._storage);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storage.read(key: 'access_token');

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshed = await _tryRefreshToken();
      if (refreshed) {
        final newToken = await _storage.read(key: 'access_token');
        final otps = err.requestOptions;

        otps.headers['Authorization'] = 'Bearer $newToken';
        try {
          final response = await _dio.fetch(otps);
          return handler.resolve(response);
        } catch (e) {
          return handler.next(err);
        }
      }

      await _storage.delete(key: 'access_token');
      await _storage.delete(key: 'refresh_token');
    }

    handler.next(err);
  }

  Future<bool> _tryRefreshToken() async {
    try {
      final refreshToken = await _storage.read(key: 'refresh_token');
      if (refreshToken == null) return false;

      final refreshDio = Dio(
        BaseOptions(
          baseUrl: dotenv.env['BASE_URL'] ?? 'http://192.168.1.5:8080/',
        ),
      );

      final response = await refreshDio.post(
        'auth/refresh',
        data: {'refreshToken': refreshToken},
      );

      final newAccessToken = response.data['accessToken'];
      await _storage.write(key: 'access_token', value: newAccessToken);
      return true;
    } catch (e) {
      return false;
    }
  }
}
