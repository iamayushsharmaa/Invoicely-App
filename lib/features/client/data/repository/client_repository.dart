import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

import '../../../invoice/data/model/client_request.dart';
import '../../domain/entities/client_enitity.dart';

abstract class ClientRepository {
  FutureEither<ClientEntity> createClient(ClientEntity request);

  FutureEither<List<ClientEntity>> fetchClients();

  FutureEither<List<InvoiceEntity>> getInvoicesByClientId(String clientId);

  FutureEither<ClientEntity> updateClient(
    String clientId,
    ClientEntity request,
  );

  FutureVoid deleteClient(String clientId);
}
