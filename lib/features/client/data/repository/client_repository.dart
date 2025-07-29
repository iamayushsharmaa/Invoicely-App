import 'package:invoice/features/client/data/models/client_model.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';

abstract class ClientRepository {
  Future<ClientModel?> createClients(ClientEntity request);

  Future<ClientModel?> getAllClients();

  Future<ClientModel?> getClientById(String clientId);

  Future<ClientModel?> updateClient(String clientId);

  Future<ClientModel?> deleteClient(String clientId);
}
