import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/client_enitity.dart';
import '../params/search_client_params.dart';
import '../repository/client_repository.dart';

class SearchClientsUseCase
    implements UseCase<List<ClientEntity>, SearchClientParams> {
  final ClientRepository _repository;

  const SearchClientsUseCase(this._repository);

  @override
  Future<Either<Failure, List<ClientEntity>>> call(SearchClientParams params) =>
      _repository.searchClients(params);
}
