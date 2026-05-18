import '../../domain/params/client_params.dart';
import '../models/client_model.dart';

abstract interface class ClientRemoteDatasource {
  Future<List<ClientModel>> getAllClients();

  Future<ClientModel> getClientById(String clientId);

  Future<ClientModel> createClient(CreateClientParams params);

  Future<List<ClientModel>> searchClients({
    required String query,
    required int page,
    required int size,
  });

  Future<ClientModel> updateClient(UpdateClientParams params);

  Future<void> deleteClient(String clientId);
}
