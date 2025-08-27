import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';
import '../../data/models/client_request.dart';

part 'client_event.freezed.dart';

@freezed
class ClientEvent with _$ClientEvent {
  const factory ClientEvent.fetchClients() = FetchClients;
  const factory ClientEvent.createClient(ClientEntity request) = CreateClient;
  const factory ClientEvent.updateClient(String clientId, ClientEntity request) = UpdateClient;
  const factory ClientEvent.deleteClient(String clientId) = DeleteClient;
  const factory ClientEvent.getInvoicesByClientId(String clientId) = GetInvoicesByClientId;
}