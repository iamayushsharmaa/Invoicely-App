import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/client_enitity.dart';
import '../params/client_params.dart';
import '../repository/client_repository.dart';

class UpdateClientUseCase implements UseCase<ClientEntity, UpdateClientParams> {
  final ClientRepository _repository;

  const UpdateClientUseCase(this._repository);

  @override
  Future<Either<Failure, ClientEntity>> call(UpdateClientParams params) =>
      _repository.updateClient(params);
}
