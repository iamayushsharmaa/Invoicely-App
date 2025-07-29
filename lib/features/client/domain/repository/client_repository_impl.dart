import 'package:invoice/features/client/data/models/client_model.dart';
import 'package:invoice/features/client/data/repository/client_repository.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';

class ClientRepositoryImpl implements ClientRepository{
  @override
  Future<ClientModel?> createClients(ClientEntity request) {
    // TODO: implement createClients
    throw UnimplementedError();
  }

  @override
  Future<ClientModel?> deleteClient(String clientId) {
    // TODO: implement deleteClient
    throw UnimplementedError();
  }

  @override
  Future<ClientModel?> getAllClients() {
    // TODO: implement getAllClients
    throw UnimplementedError();
  }

  @override
  Future<ClientModel?> getClientById(String clientId) {
    // TODO: implement getClientById
    throw UnimplementedError();
  }

  @override
  Future<ClientModel?> updateClient(String clientId) {
    // TODO: implement updateClient
    throw UnimplementedError();
  }

}