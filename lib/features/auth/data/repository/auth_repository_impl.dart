import 'package:fpdart/fpdart.dart';
import 'package:invoice/core/errors/failure.dart';
import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:invoice/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:invoice/features/auth/domain/entity/auth_token.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../../core/network/api_exceptions.dart';
import '../../domain/entity/user_model.dart';
import '../models/auth_request_models.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _remote;
  final AuthLocalDatasource _local;

  AuthRepositoryImpl({
    required AuthRemoteDatasource remote,
    required AuthLocalDatasource local,
  }) : _remote = remote,
       _local = local;

  @override
  FutureEither<AuthToken> checkAuthStatus() async {
    try {
      final token = await _local.getToken();
      if (token != null && !JwtDecoder.isExpired(token)) {
        return Right(AuthToken(token, user: _extractUserFromToken(token)));
      }
      await _local.clearToken();
      return Left(AuthFailure('Session expired. Please sign in again.'));
    } catch (e) {
      return Left(ServerFailure('Failed to check auth status'));
    }
  }

  @override
  FutureEither<AuthToken> register(
    String name,
    String email,
    String password,
  ) async {
    try {
      final response = await _remote.register(
        RegisterRequest(name: name, email: email, password: password),
      );
      if (response.token != null) {
        await _local.saveToken(response.token!);
        return Right(
          AuthToken(
            response.token!,
            user: _extractUserFromToken(response.token!),
          ),
        );
      }
      return Left(AuthFailure(response.error ?? 'Registration failed'));
    } catch (e) {
      return Left(ServerFailure('Unexpected error during registration'));
    }
  }

  @override
  FutureEither<AuthToken> signIn(String email, String password) async {
    try {
      final response = await _remote.signIn(
        SignInRequest(email: email, password: password),
      );
      if (response.token != null) {
        await _local.saveToken(response.token!);
        return Right(
          AuthToken(
            response.token!,
            user: _extractUserFromToken(response.token!),
          ),
        );
      }
      return Left(AuthFailure(response.error ?? 'Sign in failed'));
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Unexpected error during sign in'));
    }
  }

  @override
  FutureEither<AuthToken> continueWithGoogle() async {
    try {
      final idToken = await _remote.getGoogleIdToken();
      if (idToken == null) {
        return Left(AuthFailure('Google sign-in cancelled'));
      }
      final response = await _remote.continueWithGoogle(
        GoogleSignInRequest(token: idToken),
      );
      if (response.token != null) {
        await _local.saveToken(response.token!);
        return Right(
          AuthToken(
            response.token!,
            user: _extractUserFromToken(response.token!),
          ),
        );
      }
      return Left(AuthFailure(response.error ?? 'Google sign-in failed'));
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Unexpected error during Google sign-in'));
    }
  }

  @override
  FutureEither<void> signOut() async {
    try {
      await _local.clearToken();
      await _remote.signOutGoogle();
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Sign out failed'));
    }
  }

  User? _extractUserFromToken(String token) {
    try {
      final decoded = JwtDecoder.decode(token);
      return User(
        id: decoded['id']?.toString() ?? '',
        email: decoded['email'] ?? '',
        name: decoded['name'] ?? '',
        profileImageUrl: decoded['profileImageUrl'],
      );
    } catch (_) {
      return null;
    }
  }
}
