import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invoice/core/network/api_error_handling.dart';
import 'package:invoice/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:invoice/features/auth/data/models/auth_response_model.dart';

import '../models/auth_request_models.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final Dio _dio;
  final GoogleSignIn _googleSignIn;

  AuthRemoteDatasourceImpl({required Dio dio, GoogleSignIn? googleSignIn})
    : _dio = dio,
      _googleSignIn = googleSignIn ?? GoogleSignIn();

  @override
  Future<AuthenticationResponse> register(RegisterRequest request) async {
    try {
      final response = await _dio.post(
        '/v1/auth/register',
        data: request.toMap(),
      );
      return AuthenticationResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<AuthenticationResponse> signIn(SignInRequest request) async {
    try {
      final response = await _dio.post(
        '/v1/auth/authenticate',
        data: request.toMap(),
      );
      return AuthenticationResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<AuthenticationResponse> continueWithGoogle(
    GoogleSignInRequest request,
  ) async {
    try {
      final response = await _dio.post(
        '/v1/auth/google',
        data: request.toJson(),
      );
      return AuthenticationResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<String?> getGoogleIdToken() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return null;

      final googleAuth = await googleUser.authentication;
      return googleAuth.idToken;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<void> signOutGoogle() => _googleSignIn.signOut();
}
