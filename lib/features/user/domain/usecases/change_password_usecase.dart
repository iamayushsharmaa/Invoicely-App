import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/user_repository.dart';

class ChangePasswordUseCase implements UseCase<void, ChangePasswordParams> {
  final UserRepository _repository;

  const ChangePasswordUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ChangePasswordParams params) {
    return _repository.changePassword(params);
  }
}

class ChangePasswordParams {
  final String currentPassword;
  final String newPassword;

  const ChangePasswordParams({
    required this.currentPassword,
    required this.newPassword,
  });
}
