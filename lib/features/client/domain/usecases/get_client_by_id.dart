
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/client_enitity.dart';
import '../repository/client_repository.dart';

class GetClientByIdUseCase implements UseCase<ClientEntity, String> {
  final ClientRepository _repository;

  const GetClientByIdUseCase(this._repository);

  @override
  Future<Either<Failure, ClientEntity>> call(String params) =>
      _repository.getClientById(params);
}