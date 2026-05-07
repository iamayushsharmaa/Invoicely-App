import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/user_entity.dart';
import '../repository/user_repository.dart';

class UpdateProfileUseCase implements UseCase<UserEntity, UpdateProfileParams> {
  final UserRepository _repository;

  const UpdateProfileUseCase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call(UpdateProfileParams params) {
    return _repository.updateProfile(params);
  }
}

class UpdateProfileParams {
  final String name;
  final String? phone;
  final String? profileImageUrl;

  const UpdateProfileParams({
    required this.name,
    this.phone,
    this.profileImageUrl,
  });
}
