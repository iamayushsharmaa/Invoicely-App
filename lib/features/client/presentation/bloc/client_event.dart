part of 'client_bloc.dart';

@freezed
class ClientEvent with _$ClientEvent {
  const factory ClientEvent.getAllClients() = _GetAllClients;

  const factory ClientEvent.getClientInvoices(
      String clientId
      ) = _GetClientInvoices;

  const factory ClientEvent.createClient(CreateClientParams params) =
      _CreateClient;

  const factory ClientEvent.updateClient(UpdateClientParams params) =
      _UpdateClient;

  const factory ClientEvent.deleteClient(String clientId) = _DeleteClient;
}
