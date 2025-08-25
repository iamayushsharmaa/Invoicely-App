import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/client/data/models/client_model.dart';
import 'package:invoice/features/client/data/repository/client_repository.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';

class ClientRepositoryImpl implements ClientRepository{
  @override
  FutureEither<ClientModel?> createClients(ClientEntity request) {
    // TODO: implement createClients
    throw UnimplementedError();
  }

  @override
  FutureEither<ClientModel?> deleteClient(String clientId) {
    // TODO: implement deleteClient
    throw UnimplementedError();
  }

  @override
  FutureEither<ClientModel?> getAllClients() {
    // TODO: implement getAllClients
    throw UnimplementedError();
  }

  @override
  FutureEither<ClientModel?> getClientById(String clientId) {
    // TODO: implement getClientById
    throw UnimplementedError();
  }

  @override
  FutureEither<ClientModel?> updateClient(String clientId) {
    // TODO: implement updateClient
    throw UnimplementedError();
  }

}