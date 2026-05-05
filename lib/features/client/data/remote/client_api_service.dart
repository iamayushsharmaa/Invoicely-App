import 'package:dio/dio.dart';
import 'package:invoice/features/client/data/models/client_response.dart';

import '../../../invoice/data/model/client_request.dart';
import '../../../invoice/data/model/invoice_model.dart';
import '../../../invoice/data/remote/InvoiceApiService.dart';

class ClientApiService {
  final Dio dio;
  static const String baseUrl =
      "https://invoicely-367c.onrender.com/api/clients";

  ClientApiService({required this.dio});

  Future<ClientResponse> createClient(ClientRequest request) async {
    final response = await dio.post(baseUrl, data: request.toJson());
    return ClientResponse.fromJson(response.data);
  }

  Future<List<ClientResponse>> fetchClients() async {
    final response = await dio.get(baseUrl);
    final List data = response.data;
    return data.map((e) => ClientResponse.fromJson(e)).toList();
  }

  Future<List<InvoiceResponse>> getInvoicesByClientId(String clientId) async {
    final response = await dio.get(
      '${InvoiceApiService.baseUrl}/client/$clientId',
    );
    final List data = response.data;
    return data.map((e) => InvoiceResponse.fromJson(e)).toList();
  }

  Future<ClientResponse> updateClient(
    String clientId,
    ClientRequest request,
  ) async {
    final response = await dio.put(
      '$baseUrl/$clientId',
      data: request.toJson(),
    );
    return ClientResponse.fromJson(response.data);
  }

  Future<void> deleteClient(String clientId) async {
    await dio.delete('${ClientApiService.baseUrl}/$clientId');
  }
}
