import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../data/repository/client_repository.dart';
import 'client_event.dart';
import 'client_state.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final ClientRepository clientRepository;

  ClientBloc({required this.clientRepository}) : super(ClientState.initial()) {
    on<CreateClient>(_createClient);
    on<FetchClients>(_fetchClients);
    on<UpdateClient>(_updateClient);
    on<DeleteClient>(_deleteClient);
    on<GetInvoicesByClientId>(_getInvoicesByClientId);
  }

  Future<void> _createClient(
    CreateClient event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());
    final result = await clientRepository.createClient(event.request);
    result.fold(
      (l) => emit(ClientState.error(l.message)),
      (r) => emit(ClientState.clientSuccess('Client created successfully')),
    );
  }

  Future<void> _fetchClients(
    FetchClients event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());
    final result = await clientRepository.fetchClients();
    result.fold(
      (l) => emit(ClientState.error(l.message)),
      (r) => emit(ClientState.clientsLoaded(r)),
    );
  }

  Future<void> _updateClient(
    UpdateClient event,
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

  Future<void> _deleteClient(
    DeleteClient event,
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

  Future<void> _getInvoicesByClientId(
    GetInvoicesByClientId event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());
    final result = await clientRepository.getInvoicesByClientId(event.clientId);

    result.fold(
      (l) => emit(ClientState.error(l.message)),
      (r) => emit(ClientState.invoicesLoaded(r)),
    );
  }
}
