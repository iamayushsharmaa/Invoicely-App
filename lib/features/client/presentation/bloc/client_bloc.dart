import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/core/usecase/usecase.dart';
import 'package:invoice/features/client/domain/usecases/create_client_usecase.dart';
import 'package:invoice/features/client/domain/usecases/delete_client_usecase.dart';
import 'package:invoice/features/client/domain/usecases/get_all_clients_usecase.dart';
import 'package:invoice/features/client/domain/usecases/update_client_usecase.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

import '../../../../core/errors/failure.dart';
import '../../../invoice/domain/usecases/get_invoice_by_client_usecase.dart';
import '../../domain/entities/client_enitity.dart';
import '../../domain/params/client_params.dart';

part 'client_bloc.freezed.dart';
part 'client_event.dart';
part 'client_state.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final GetAllClientsUseCase _getAllClientsUseCase;
  final CreateClientUseCase _createClientUseCase;
  final UpdateClientUseCase _updateClientUseCase;
  final DeleteClientUseCase _deleteClientUseCase;
  final GetInvoicesByClientUseCase _getInvoicesByClientUseCase;

  ClientBloc({
    required GetAllClientsUseCase getAllClientsUseCase,
    required CreateClientUseCase createClientUseCase,
    required UpdateClientUseCase updateClientUseCase,
    required DeleteClientUseCase deleteClientUseCase,
    required GetInvoicesByClientUseCase getInvoicesByClientUseCase,
  }) : _getAllClientsUseCase = getAllClientsUseCase,
       _createClientUseCase = createClientUseCase,
       _updateClientUseCase = updateClientUseCase,
       _deleteClientUseCase = deleteClientUseCase,
       _getInvoicesByClientUseCase = getInvoicesByClientUseCase,
       super(ClientState.initial()) {
    on<_GetAllClients>(_onGetAllClients);
    on<_GetClientInvoices>(_onGetClientInvoices);
    on<_CreateClient>(_onCreateClient);
    on<_UpdateClient>(_onUpdateClient);
    on<_DeleteClient>(_onDeleteClient);
  }

  Future<void> _onGetAllClients(
    _GetAllClients event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());

    final result = await _getAllClientsUseCase(NoParams());

    result.fold(
      (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
      (clients) => emit(ClientState.loaded(clients)),
    );
  }

  Future<void> _onGetClientInvoices(
    _GetClientInvoices event,
    Emitter<ClientState> emit,
  ) async {
    emit(const ClientState.loading());

    final result = await _getInvoicesByClientUseCase(event.clientId);

    result.fold(
      (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
      (invoices) => emit(ClientState.clientInvoicesLoaded(invoices)),
    );
  }

  Future<void> _onCreateClient(
    _CreateClient event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());

    final result = await _createClientUseCase(event.params);

    result.fold(
      (l) => emit(ClientState.error(l.message)),
      (r) => emit(ClientState.clientSuccess('Client created successfully')),
    );
  }

  Future<void> _onUpdateClient(
    _UpdateClient event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());
    final result = await clientRepository.updateClient(
      event.clientId,
      event.request,
    );
    result.fold(
      (l) => emit(ClientState.error(l.message)),
      (r) => emit(ClientState.clientSuccess('Client updated successfully')),
    );
  }

  Future<void> _onDeleteClient(
    _DeleteClient event,
    Emitter<ClientState> emit,
  ) async {
    await state.maybeWhen(
      clientsLoaded: (clients) async {
        final updatedClients = clients
            .where((c) => c.id != event.clientId)
            .toList();
        emit(ClientState.clientsLoaded(updatedClients));

        final result = await clientRepository.deleteClient(event.clientId);

        result.fold(
          (failure) {
            emit(ClientState.error(failure.message));
            add(FetchClients());
          },
          (_) {
            emit(
              const ClientState.clientSuccess('Client deleted successfully'),
            );
          },
        );
      },
      orElse: () {},
    );
  }

  String _mapFailureMessage(Failure failure) {
    return failure.message;
  }
}
