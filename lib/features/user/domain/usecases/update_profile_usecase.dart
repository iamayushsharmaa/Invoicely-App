import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/update_user_params.dart';
import '../entities/user_entity.dart';
import '../repository/user_repository.dart';

class UpdateProfileUseCase implements UseCase<UserEntity, UpdateProfileParams> {
  final UserRepository _repository;

  const UpdateProfileUseCase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call(UpdateProfileParams params) =>
      _repository.updateProfile(params);
}
