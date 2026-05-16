part of 'client_bloc.dart';

@freezed
class ClientState with _$ClientState {
  const factory ClientState.initial() = _Initial;

  const factory ClientState.loading() = _Loading;

  const factory ClientState.loaded(List<ClientEntity> clients) = _Loaded;

  const factory ClientState.clientLoaded(ClientEntity client) = _ClientLoaded;

  const factory ClientState.error(String message) = _Error;
}
