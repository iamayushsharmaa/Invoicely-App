import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/user_entity.dart';
import '../repository/user_repository.dart';

class GetProfileUseCase implements UseCase<UserEntity, NoParams> {
  final UserRepository _repository;

  const GetProfileUseCase(this._repository);

  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) {
    return _repository.getProfile();
  }
}
