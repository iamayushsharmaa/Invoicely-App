import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';
import '../../data/models/client_response.dart';

part 'client_state.freezed.dart';

@freezed
class ClientState with _$ClientState {
  const factory ClientState.initial() = _Initial;
  const factory ClientState.loading() = _Loading;
  const factory ClientState.clientsLoaded(List<ClientEntity> clients) = _ClientsLoaded;
  const factory ClientState.clientSuccess(String message) = _ClientSuccess;
  const factory ClientState.invoicesLoaded(List<InvoiceEntity> invoices) = _InvoicesLoaded;
  const factory ClientState.error(String message) = _Error;
}