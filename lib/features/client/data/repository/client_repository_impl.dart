import 'package:fpdart/fpdart.dart';
import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/client/domain/repository/client_repository.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

import '../../../../core/errors/failure.dart';
import '../remote/client_api_service.dart';

class ClientRepositoryImpl implements ClientRepository {
  final ClientApiService apiService;

  ClientRepositoryImpl({required this.apiService});

  @override
  FutureEither<ClientEntity> createClient(ClientEntity request) async {
    try {
      final client = await apiService.createClient(request.toRequest());
      return Right(client.toEntity());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<List<ClientEntity>> fetchClients() async {
    try {
      final clients = await apiService.fetchClients();
      return Right(clients.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<List<InvoiceEntity>> getInvoicesByClientId(
    String clientId,
  ) async {
    try {
      final invoices = await apiService.getInvoicesByClientId(clientId);
      return Right(invoices.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<ClientEntity> updateClient(
    String clientId,
    ClientEntity request,
  ) async {
    try {
      final client = await apiService.updateClient(
        clientId,
        request.toRequest(),
      );
      return Right(client.toEntity());
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
