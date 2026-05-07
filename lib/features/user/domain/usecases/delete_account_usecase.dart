import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/user_repository.dart';

class DeleteAccountUseCase implements UseCase<void, NoParams> {
  final UserRepository _repository;

  const DeleteAccountUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return _repository.deleteAccount();
  }
}
