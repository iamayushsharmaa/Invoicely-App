import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/client_enitity.dart';
import '../repository/client_repository.dart';

class GetAllClientsUseCase implements UseCase<List<ClientEntity>, NoParams> {
  final ClientRepository _repository;

  const GetAllClientsUseCase(this._repository);

  @override
  Future<Either<Failure, List<ClientEntity>>> call(NoParams params) =>
      _repository.getAllClients();
}
