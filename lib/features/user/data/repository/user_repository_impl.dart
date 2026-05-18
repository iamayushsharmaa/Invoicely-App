import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:invoice/core/errors/failure.dart';
import 'package:invoice/core/network/api_error_handling.dart';
import 'package:invoice/core/network/api_exceptions.dart';
import 'package:invoice/features/user/data/datasources/user_remote_datasource.dart';
import 'package:invoice/features/user/domain/repository/user_repository.dart';

import '../../domain/entities/change_password_params.dart';
import '../../domain/entities/update_user_params.dart';
import '../../domain/entities/user_entity.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource _remote;

  UserRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, UserEntity>> getProfile() async {
    try {
      final result = await _remote.getProfile();
      return Right(result);
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to get profile'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateProfile(
    UpdateProfileParams params,
  ) async {
    try {
      final result = await _remote.updateProfile(params);

      return Right(result);
    } on DioException catch (e) {
      final exception = handleDioError(e);

      return Left(ServerFailure(exception.message));
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> changePassword(
    ChangePasswordParams params,
  ) async {
    try {
      await _remote.changePassword(params);

      return const Right(null);
    } on DioException catch (e) {
      final exception = handleDioError(e);

      return Left(ServerFailure(exception.message));
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    try {
      await _remote.deleteAccount();

      return const Right(null);
    } on DioException catch (e) {
      final exception = handleDioError(e);

      return Left(ServerFailure(exception.message));
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
