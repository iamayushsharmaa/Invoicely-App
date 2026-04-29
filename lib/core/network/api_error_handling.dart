import 'package:dio/dio.dart';
import 'package:invoice/core/network/api_exceptions.dart';

ApiException handleDioError(DioException e) {
  switch (e.type) {
    case DioException.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return const ApiException(
        message: 'Connection time out. Check your network.',
      );

    case DioExceptionType.connectionError:
      return const ApiException(
        message:
            'Cannot reach server. Make sure Spring Boot is running and you are on the same WiFi.',
      );

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode;
      final serverMessage =
          e.response?.data?['message'] ??
          e.response?.data?['error'] ??
          'Something went wrong';

      return ApiException(message: serverMessage, statusCode: statusCode);

    default:
      return ApiException(message: e.message ?? 'Unexpected error occurred');
  }
}
