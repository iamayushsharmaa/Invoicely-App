import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../entities/client_enitity.dart';
import '../params/client_params.dart';

abstract interface class ClientRepository {
  Future<Either<Failure, List<ClientEntity>>> getAllClients();

  Future<Either<Failure, ClientEntity>> getClientById(String clientId);

  Future<Either<Failure, ClientEntity>> createClient(CreateClientParams params);

  Future<Either<Failure, ClientEntity>> updateClient(UpdateClientParams params);

  Future<Either<Failure, void>> deleteClient(String clientId);
}
