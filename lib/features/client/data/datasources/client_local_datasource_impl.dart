import 'package:hive/hive.dart';

import '../../../../core/errors/failure.dart';
import '../models/client_model.dart';
import 'client_local_datasource.dart';

class ClientLocalDatasourceImpl implements ClientLocalDatasource {
  final Box<ClientModel> _clientBox;

  ClientLocalDatasourceImpl(this._clientBox);

  @override
  Future<List<ClientModel>> getCachedClients() async {
    try {
      return _clientBox.values.toList();
    } catch (e) {
      throw const CacheFailure('Failed to load cached clients.');
    }
  }

  @override
  Future<ClientModel?> getCachedClientById(String clientId) async {
    try {
      return _clientBox.get(clientId);
    } catch (e) {
      throw const CacheFailure('Failed to load cached client.');
    }
  }

  @override
  Future<void> cacheClients(List<ClientModel> clients) async {
    try {
      final map = {for (final c in clients) c.id: c};
      await _clientBox.putAll(map);
    } catch (e) {
      throw const CacheFailure('Failed to cache clients.');
    }
  }

  @override
  Future<void> cacheClient(ClientModel client) async {
    try {
      await _clientBox.put(client.id, client);
    } catch (e) {
      throw const CacheFailure('Failed to cache client.');
    }
  }

  @override
  Future<void> deleteClientFromCache(String clientId) async {
    try {
      await _clientBox.delete(clientId);
    } catch (e) {
      throw const CacheFailure('Failed to delete cached client.');
    }
  }

  @override
  Future<void> clearCache() async {
    try {
      await _clientBox.clear();
    } catch (e) {
      throw const CacheFailure('Failed to clear client cache.');
    }
  }
}
