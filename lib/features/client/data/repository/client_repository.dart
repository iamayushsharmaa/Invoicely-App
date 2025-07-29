import 'package:invoice/features/client/data/models/client_model.dart';

abstract class ClientRepository {
  Future<ClientModel?> createClients(ClientModel request);

  Future<ClientModel?> getAllClients();

  Future<ClientModel?> getClientById(String clientId);

  Future<ClientModel?> updateClient(String clientId);

  Future<ClientModel?> deleteClient(String clientId);
}
