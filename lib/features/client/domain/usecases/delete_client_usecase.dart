import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/client_repository.dart';

class DeleteClientUseCase implements UseCase<void, String> {
  final ClientRepository _repository;

  const DeleteClientUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(String clientId) =>
      _repository.deleteClient(clientId);
}
