import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/core/usecase/usecase.dart';
import 'package:invoice/features/client/domain/usecases/create_client_usecase.dart';
import 'package:invoice/features/client/domain/usecases/delete_client_usecase.dart';
import 'package:invoice/features/client/domain/usecases/get_all_clients_usecase.dart';
import 'package:invoice/features/client/domain/usecases/update_client_usecase.dart';

import '../../../../core/errors/failure.dart';
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

  ClientBloc({
    required GetAllClientsUseCase getAllClientsUseCase,
    required CreateClientUseCase createClientUseCase,
    required UpdateClientUseCase updateClientUseCase,
    required DeleteClientUseCase deleteClientUseCase,
  }) : _getAllClientsUseCase = getAllClientsUseCase,
       _createClientUseCase = createClientUseCase,
       _updateClientUseCase = updateClientUseCase,
       _deleteClientUseCase = deleteClientUseCase,
       super(ClientState.initial()) {
    on<_GetAllClients>(_onGetAllClients);
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
