import 'package:dio/dio.dart';

import '../../../../core/network/api_error_handling.dart';
import '../../domain/params/client_params.dart';
import '../models/client_model.dart';
import 'client_remote_datasource.dart';

class ClientRemoteDatasourceImpl implements ClientRemoteDatasource {
  final Dio _dio;

  ClientRemoteDatasourceImpl(this._dio);

  @override
  Future<List<ClientModel>> getAllClients() async {
    try {
      final response = await _dio.get('/api/v1/clients');
      final list = response.data as List<dynamic>;
      return list
          .map((e) => ClientModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<ClientModel> getClientById(String clientId) async {
    try {
      final response = await _dio.get('/api/v1/clients/$clientId');
      return ClientModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<List<ClientModel>> searchClients({
    required String query,
    required int page,
    required int size,
  }) async {
    try {
      final response = await _dio.get(
        '/api/v1/clients/search',
        queryParameters: {'query': query, 'page': page, 'size': size},
      );
      final list = response.data['content'] as List<dynamic>;
      return list
          .map((e) => ClientModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<ClientModel> createClient(CreateClientParams params) async {
    try {
      final response = await _dio.post(
        '/api/v1/clients',
        data: {
          'name': params.name,
          'email': params.email,
          'phone': params.phone,
          'address': params.address,
        },
      );
      return ClientModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<ClientModel> updateClient(UpdateClientParams params) async {
    try {
      final response = await _dio.put(
        '/api/v1/clients/${params.clientId}',
        data: {
          'name': params.name,
          'email': params.email,
          'phone': params.phone,
          'address': params.address,
        },
      );
      return ClientModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<void> deleteClient(String clientId) async {
    try {
      await _dio.delete('/api/v1/clients/$clientId');
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
