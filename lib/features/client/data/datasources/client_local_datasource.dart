import '../models/client_model.dart';

abstract interface class ClientLocalDatasource {
  Future<List<ClientModel>> getCachedClients();

  Future<ClientModel?> getCachedClientById(String clientId);

  Future<void> cacheClients(List<ClientModel> clients);

  Future<void> cacheClient(ClientModel client);

  Future<void> deleteClientFromCache(String clientId);

  Future<void> clearCache();
}
