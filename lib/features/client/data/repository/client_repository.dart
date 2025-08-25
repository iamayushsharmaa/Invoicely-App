import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/client/data/models/client_model.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';

abstract class ClientRepository {
  FutureEither<ClientModel?> createClients(ClientEntity request);

  FutureEither<ClientModel?> getAllClients();

  FutureEither<ClientModel?> getClientById(String clientId);

  FutureEither<ClientModel?> updateClient(String clientId);

  FutureEither<ClientModel?> deleteClient(String clientId);
}
