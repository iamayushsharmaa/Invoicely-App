import 'package:dio/dio.dart';
import 'package:invoice/features/client/data/models/client_model.dart';

class ClientApiService{


  final Dio dio;
  static final String baseUrl = 'https://invoicely-367c.onrender.com';

  ClientApiService({required this.dio});

  Future<ClientModel> createClient(ClientModel request) async {
    try {
      final response = await dio.post(
        '/api/v1/invoice',
        data: request.toMap(),
      );
      return ClientModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }

  Future<ClientModel> getAllClients() async {
    try {
      final response = await dio.post(
        '/api/v1/invoice',
      );
      return ClientModel.fromMap(response.data);
    } catch (e) {
      print('Error: \$e');
    }
  }
}