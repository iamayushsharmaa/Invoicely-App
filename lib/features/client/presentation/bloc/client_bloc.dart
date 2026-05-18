import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/core/usecase/usecase.dart';
import 'package:invoice/features/client/domain/usecases/create_client_usecase.dart';
import 'package:invoice/features/client/domain/usecases/delete_client_usecase.dart';
import 'package:invoice/features/client/domain/usecases/get_all_clients_usecase.dart';
import 'package:invoice/features/client/domain/usecases/get_client_by_id.dart';
import 'package:invoice/features/client/domain/usecases/update_client_usecase.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/client_enitity.dart';
import '../../domain/params/client_params.dart';
import '../../domain/params/search_client_params.dart';
import '../../domain/usecases/search_client_usecase.dart';

part 'client_bloc.freezed.dart';
part 'client_event.dart';
part 'client_state.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final GetAllClientsUseCase _getAllClientsUseCase;
  final GetClientByIdUseCase _getClientByIdUseCase;
  final SearchClientsUseCase _searchClientsUseCase;
  final CreateClientUseCase _createClientUseCase;
  final UpdateClientUseCase _updateClientUseCase;
  final DeleteClientUseCase _deleteClientUseCase;

  ClientBloc({
    required GetAllClientsUseCase getAllClientsUseCase,
    required GetClientByIdUseCase getClientByIdUseCase,
    required SearchClientsUseCase searchClientsUseCase,
    required CreateClientUseCase createClientUseCase,
    required UpdateClientUseCase updateClientUseCase,
    required DeleteClientUseCase deleteClientUseCase,
  }) : _getAllClientsUseCase = getAllClientsUseCase,
       _getClientByIdUseCase = getClientByIdUseCase,
       _searchClientsUseCase = searchClientsUseCase,
       _createClientUseCase = createClientUseCase,
       _updateClientUseCase = updateClientUseCase,
       _deleteClientUseCase = deleteClientUseCase,
       super(ClientState.initial()) {
    on<_GetAllClients>(_onGetAllClients);
    on<_GetClientById>(_onGetClientById);
    on<_CreateClient>(_onCreateClient);
    on<_SearchClients>(_onSearchClients);
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

  Future<void> _onGetClientById(
    _GetClientById event,
    Emitter<ClientState> emit,
  ) async {
    emit(const ClientState.loading());

    final result = await _getClientByIdUseCase(event.clientId);

    result.fold(
      (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
      (client) => emit(ClientState.clientLoaded(client)),
    );
  }

  Future<void> _onSearchClients(
    _SearchClients event,
    Emitter<ClientState> emit,
  ) async {
    emit(const ClientState.loading());

    final result = await _searchClientsUseCase(event.params);

    result.fold(
      (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
      (clients) => emit(ClientState.loaded(clients)),
    );
  }

  Future<void> _onCreateClient(
    _CreateClient event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());

    final result = await _createClientUseCase(event.params);

    await result.fold(
      (failure) async {
        emit(ClientState.error(_mapFailureMessage(failure)));
      },
      (_) async {
        final clientsResult = await _getAllClientsUseCase(NoParams());

        clientsResult.fold(
          (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
          (clients) => emit(ClientState.loaded(clients)),
        );
      },
    );
  }

  Future<void> _onUpdateClient(
    _UpdateClient event,
    Emitter<ClientState> emit,
  ) async {
    emit(ClientState.loading());

    final result = await _updateClientUseCase(event.params);

    result.fold((l) => emit(ClientState.error(l.message)), (_) async {
      final clientsResult = await _getAllClientsUseCase(NoParams());

      clientsResult.fold(
        (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
        (clients) => emit(ClientState.loaded(clients)),
      );
    });
  }

  Future<void> _onDeleteClient(
    _DeleteClient event,
    Emitter<ClientState> emit,
  ) async {
    emit(const ClientState.loading());

    final result = await _deleteClientUseCase(event.clientId);

    await result.fold(
      (failure) async {
        emit(ClientState.error(_mapFailureMessage(failure)));
      },
      (_) async {
        final clientsResult = await _getAllClientsUseCase(NoParams());

        clientsResult.fold(
          (failure) => emit(ClientState.error(_mapFailureMessage(failure))),
          (clients) => emit(ClientState.loaded(clients)),
        );
      },
    );
  }

  String _mapFailureMessage(Failure failure) {
    return failure.message;
  }
}
