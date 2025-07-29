import 'package:dio/dio.dart';
import 'package:invoice/features/client/data/models/client_model.dart';

class ClientApiService {
  final Dio dio;
  static final String baseUrl = 'https://invoicely-367c.onrender.com';

  ClientApiService({required this.dio});

  Future<ClientModel?> createClient(ClientModel request) async {
    try {
      final response = await dio.post('/api/v1/clients', data: request.toMap());
      return ClientModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<ClientModel?> getAllClients(String userId) async {
    try {
      final response = await dio.get(
        '/api/v1/clients',
      );
      return ClientModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<void> updateClient() async {
    try {
      final response = await dio.put('/api/v1/client/update');
      ClientModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<void> deleteClient() async {
    try {
      final response = await dio.delete('/api/v1/clients');
      ClientModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }
}
