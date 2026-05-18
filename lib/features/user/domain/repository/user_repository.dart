import 'package:fpdart/fpdart.dart';
import 'package:invoice/core/errors/failure.dart';
import 'package:invoice/features/user/domain/entities/user_entity.dart';

import '../entities/change_password_params.dart';
import '../entities/update_user_params.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getProfile();

  Future<Either<Failure, UserEntity>> updateProfile(UpdateProfileParams params);

  Future<Either<Failure, void>> changePassword(ChangePasswordParams params);

  Future<Either<Failure, void>> deleteAccount();
}
