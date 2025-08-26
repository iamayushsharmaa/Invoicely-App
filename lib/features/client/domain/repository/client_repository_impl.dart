import 'package:fpdart/fpdart.dart';
import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/client/data/models/client_response.dart';
import 'package:invoice/features/client/data/repository/client_repository.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';

import '../../../../core/errors/failure.dart';
import '../../../invoice/data/model/client_request.dart';
import '../../../invoice/data/model/invoice_response.dart';
import '../../data/remote/client_api_service.dart';

class ClientRepositoryImpl implements ClientRepository {

  final ClientApiService apiService;

  ClientRepositoryImpl({required this.apiService});

  @override
  FutureEither<ClientResponse> createClient(ClientRequest request) async {
    try {
      final client = await apiService.createClient(request);
      return Right(client);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<List<ClientResponse>> fetchClients() async {
    try {
      final clients = await apiService.fetchClients();
      return Right(clients);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }


  @override
  FutureEither<List<InvoiceResponse>> getInvoicesByClientId(String clientId) async {
    try {
      final invoices = await apiService.getInvoicesByClientId(clientId);
      return Right(invoices);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<ClientResponse> updateClient(String clientId,
      ClientRequest request) async {
    try {
      final client = await apiService.updateClient(clientId, request);
      return Right(client);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureVoid deleteClient(String clientId) async {
    try {
      await apiService.deleteClient(clientId);
      return const Right(null);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

}