import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/client/data/models/client_response.dart';

import '../../../invoice/data/model/client_request.dart';
import '../../../invoice/data/model/invoice_response.dart';

abstract class ClientRepository {
  FutureEither<ClientResponse> createClient(ClientRequest request);

  FutureEither<List<ClientResponse>> fetchClients();

  FutureEither<List<InvoiceResponse>> getInvoicesByClientId(String clientId);

  FutureEither<ClientResponse> updateClient(
    String clientId,
    ClientRequest request,
  );

  FutureVoid deleteClient(String clientId);
}
