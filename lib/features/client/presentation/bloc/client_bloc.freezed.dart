// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllClients,
    required TResult Function(String clientId) getClientById,
    required TResult Function(CreateClientParams params) createClient,
    required TResult Function(UpdateClientParams params) updateClient,
    required TResult Function(String clientId) deleteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllClients,
    TResult? Function(String clientId)? getClientById,
    TResult? Function(CreateClientParams params)? createClient,
    TResult? Function(UpdateClientParams params)? updateClient,
    TResult? Function(String clientId)? deleteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllClients,
    TResult Function(String clientId)? getClientById,
    TResult Function(CreateClientParams params)? createClient,
    TResult Function(UpdateClientParams params)? updateClient,
    TResult Function(String clientId)? deleteClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllClients value) getAllClients,
    required TResult Function(_GetClientById value) getClientById,
    required TResult Function(_CreateClient value) createClient,
    required TResult Function(_UpdateClient value) updateClient,
    required TResult Function(_DeleteClient value) deleteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllClients value)? getAllClients,
    TResult? Function(_GetClientById value)? getClientById,
    TResult? Function(_CreateClient value)? createClient,
    TResult? Function(_UpdateClient value)? updateClient,
    TResult? Function(_DeleteClient value)? deleteClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllClients value)? getAllClients,
    TResult Function(_GetClientById value)? getClientById,
    TResult Function(_CreateClient value)? createClient,
    TResult Function(_UpdateClient value)? updateClient,
    TResult Function(_DeleteClient value)? deleteClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientEventCopyWith<$Res> {
  factory $ClientEventCopyWith(
          ClientEvent value, $Res Function(ClientEvent) then) =
      _$ClientEventCopyWithImpl<$Res, ClientEvent>;
}

/// @nodoc
class _$ClientEventCopyWithImpl<$Res, $Val extends ClientEvent>
    implements $ClientEventCopyWith<$Res> {
  _$ClientEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllClientsImplCopyWith<$Res> {
  factory _$$GetAllClientsImplCopyWith(
          _$GetAllClientsImpl value, $Res Function(_$GetAllClientsImpl) then) =
      __$$GetAllClientsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllClientsImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$GetAllClientsImpl>
    implements _$$GetAllClientsImplCopyWith<$Res> {
  __$$GetAllClientsImplCopyWithImpl(
      _$GetAllClientsImpl _value, $Res Function(_$GetAllClientsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllClientsImpl implements _GetAllClients {
  const _$GetAllClientsImpl();

  @override
  String toString() {
    return 'ClientEvent.getAllClients()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllClientsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllClients,
    required TResult Function(String clientId) getClientById,
    required TResult Function(CreateClientParams params) createClient,
    required TResult Function(UpdateClientParams params) updateClient,
    required TResult Function(String clientId) deleteClient,
  }) {
    return getAllClients();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllClients,
    TResult? Function(String clientId)? getClientById,
    TResult? Function(CreateClientParams params)? createClient,
    TResult? Function(UpdateClientParams params)? updateClient,
    TResult? Function(String clientId)? deleteClient,
  }) {
    return getAllClients?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllClients,
    TResult Function(String clientId)? getClientById,
    TResult Function(CreateClientParams params)? createClient,
    TResult Function(UpdateClientParams params)? updateClient,
    TResult Function(String clientId)? deleteClient,
    required TResult orElse(),
  }) {
    if (getAllClients != null) {
      return getAllClients();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllClients value) getAllClients,
    required TResult Function(_GetClientById value) getClientById,
    required TResult Function(_CreateClient value) createClient,
    required TResult Function(_UpdateClient value) updateClient,
    required TResult Function(_DeleteClient value) deleteClient,
  }) {
    return getAllClients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllClients value)? getAllClients,
    TResult? Function(_GetClientById value)? getClientById,
    TResult? Function(_CreateClient value)? createClient,
    TResult? Function(_UpdateClient value)? updateClient,
    TResult? Function(_DeleteClient value)? deleteClient,
  }) {
    return getAllClients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllClients value)? getAllClients,
    TResult Function(_GetClientById value)? getClientById,
    TResult Function(_CreateClient value)? createClient,
    TResult Function(_UpdateClient value)? updateClient,
    TResult Function(_DeleteClient value)? deleteClient,
    required TResult orElse(),
  }) {
    if (getAllClients != null) {
      return getAllClients(this);
    }
    return orElse();
  }
}

abstract class _GetAllClients implements ClientEvent {
  const factory _GetAllClients() = _$GetAllClientsImpl;
}

/// @nodoc
abstract class _$$GetClientByIdImplCopyWith<$Res> {
  factory _$$GetClientByIdImplCopyWith(
          _$GetClientByIdImpl value, $Res Function(_$GetClientByIdImpl) then) =
      __$$GetClientByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$GetClientByIdImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$GetClientByIdImpl>
    implements _$$GetClientByIdImplCopyWith<$Res> {
  __$$GetClientByIdImplCopyWithImpl(
      _$GetClientByIdImpl _value, $Res Function(_$GetClientByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$GetClientByIdImpl(
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetClientByIdImpl implements _GetClientById {
  const _$GetClientByIdImpl(this.clientId);

  @override
  final String clientId;

  @override
  String toString() {
    return 'ClientEvent.getClientById(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClientByIdImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClientByIdImplCopyWith<_$GetClientByIdImpl> get copyWith =>
      __$$GetClientByIdImplCopyWithImpl<_$GetClientByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllClients,
    required TResult Function(String clientId) getClientById,
    required TResult Function(CreateClientParams params) createClient,
    required TResult Function(UpdateClientParams params) updateClient,
    required TResult Function(String clientId) deleteClient,
  }) {
    return getClientById(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllClients,
    TResult? Function(String clientId)? getClientById,
    TResult? Function(CreateClientParams params)? createClient,
    TResult? Function(UpdateClientParams params)? updateClient,
    TResult? Function(String clientId)? deleteClient,
  }) {
    return getClientById?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllClients,
    TResult Function(String clientId)? getClientById,
    TResult Function(CreateClientParams params)? createClient,
    TResult Function(UpdateClientParams params)? updateClient,
    TResult Function(String clientId)? deleteClient,
    required TResult orElse(),
  }) {
    if (getClientById != null) {
      return getClientById(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllClients value) getAllClients,
    required TResult Function(_GetClientById value) getClientById,
    required TResult Function(_CreateClient value) createClient,
    required TResult Function(_UpdateClient value) updateClient,
    required TResult Function(_DeleteClient value) deleteClient,
  }) {
    return getClientById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllClients value)? getAllClients,
    TResult? Function(_GetClientById value)? getClientById,
    TResult? Function(_CreateClient value)? createClient,
    TResult? Function(_UpdateClient value)? updateClient,
    TResult? Function(_DeleteClient value)? deleteClient,
  }) {
    return getClientById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllClients value)? getAllClients,
    TResult Function(_GetClientById value)? getClientById,
    TResult Function(_CreateClient value)? createClient,
    TResult Function(_UpdateClient value)? updateClient,
    TResult Function(_DeleteClient value)? deleteClient,
    required TResult orElse(),
  }) {
    if (getClientById != null) {
      return getClientById(this);
    }
    return orElse();
  }
}

abstract class _GetClientById implements ClientEvent {
  const factory _GetClientById(final String clientId) = _$GetClientByIdImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$GetClientByIdImplCopyWith<_$GetClientByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateClientImplCopyWith<$Res> {
  factory _$$CreateClientImplCopyWith(
          _$CreateClientImpl value, $Res Function(_$CreateClientImpl) then) =
      __$$CreateClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateClientParams params});
}

/// @nodoc
class __$$CreateClientImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$CreateClientImpl>
    implements _$$CreateClientImplCopyWith<$Res> {
  __$$CreateClientImplCopyWithImpl(
      _$CreateClientImpl _value, $Res Function(_$CreateClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CreateClientImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateClientParams,
    ));
  }
}

/// @nodoc

class _$CreateClientImpl implements _CreateClient {
  const _$CreateClientImpl(this.params);

  @override
  final CreateClientParams params;

  @override
  String toString() {
    return 'ClientEvent.createClient(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClientImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClientImplCopyWith<_$CreateClientImpl> get copyWith =>
      __$$CreateClientImplCopyWithImpl<_$CreateClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllClients,
    required TResult Function(String clientId) getClientById,
    required TResult Function(CreateClientParams params) createClient,
    required TResult Function(UpdateClientParams params) updateClient,
    required TResult Function(String clientId) deleteClient,
  }) {
    return createClient(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllClients,
    TResult? Function(String clientId)? getClientById,
    TResult? Function(CreateClientParams params)? createClient,
    TResult? Function(UpdateClientParams params)? updateClient,
    TResult? Function(String clientId)? deleteClient,
  }) {
    return createClient?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllClients,
    TResult Function(String clientId)? getClientById,
    TResult Function(CreateClientParams params)? createClient,
    TResult Function(UpdateClientParams params)? updateClient,
    TResult Function(String clientId)? deleteClient,
    required TResult orElse(),
  }) {
    if (createClient != null) {
      return createClient(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllClients value) getAllClients,
    required TResult Function(_GetClientById value) getClientById,
    required TResult Function(_CreateClient value) createClient,
    required TResult Function(_UpdateClient value) updateClient,
    required TResult Function(_DeleteClient value) deleteClient,
  }) {
    return createClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllClients value)? getAllClients,
    TResult? Function(_GetClientById value)? getClientById,
    TResult? Function(_CreateClient value)? createClient,
    TResult? Function(_UpdateClient value)? updateClient,
    TResult? Function(_DeleteClient value)? deleteClient,
  }) {
    return createClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllClients value)? getAllClients,
    TResult Function(_GetClientById value)? getClientById,
    TResult Function(_CreateClient value)? createClient,
    TResult Function(_UpdateClient value)? updateClient,
    TResult Function(_DeleteClient value)? deleteClient,
    required TResult orElse(),
  }) {
    if (createClient != null) {
      return createClient(this);
    }
    return orElse();
  }
}

abstract class _CreateClient implements ClientEvent {
  const factory _CreateClient(final CreateClientParams params) =
      _$CreateClientImpl;

  CreateClientParams get params;
  @JsonKey(ignore: true)
  _$$CreateClientImplCopyWith<_$CreateClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateClientImplCopyWith<$Res> {
  factory _$$UpdateClientImplCopyWith(
          _$UpdateClientImpl value, $Res Function(_$UpdateClientImpl) then) =
      __$$UpdateClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateClientParams params});
}

/// @nodoc
class __$$UpdateClientImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$UpdateClientImpl>
    implements _$$UpdateClientImplCopyWith<$Res> {
  __$$UpdateClientImplCopyWithImpl(
      _$UpdateClientImpl _value, $Res Function(_$UpdateClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UpdateClientImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateClientParams,
    ));
  }
}

/// @nodoc

class _$UpdateClientImpl implements _UpdateClient {
  const _$UpdateClientImpl(this.params);

  @override
  final UpdateClientParams params;

  @override
  String toString() {
    return 'ClientEvent.updateClient(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClientImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClientImplCopyWith<_$UpdateClientImpl> get copyWith =>
      __$$UpdateClientImplCopyWithImpl<_$UpdateClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllClients,
    required TResult Function(String clientId) getClientById,
    required TResult Function(CreateClientParams params) createClient,
    required TResult Function(UpdateClientParams params) updateClient,
    required TResult Function(String clientId) deleteClient,
  }) {
    return updateClient(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllClients,
    TResult? Function(String clientId)? getClientById,
    TResult? Function(CreateClientParams params)? createClient,
    TResult? Function(UpdateClientParams params)? updateClient,
    TResult? Function(String clientId)? deleteClient,
  }) {
    return updateClient?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllClients,
    TResult Function(String clientId)? getClientById,
    TResult Function(CreateClientParams params)? createClient,
    TResult Function(UpdateClientParams params)? updateClient,
    TResult Function(String clientId)? deleteClient,
    required TResult orElse(),
  }) {
    if (updateClient != null) {
      return updateClient(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllClients value) getAllClients,
    required TResult Function(_GetClientById value) getClientById,
    required TResult Function(_CreateClient value) createClient,
    required TResult Function(_UpdateClient value) updateClient,
    required TResult Function(_DeleteClient value) deleteClient,
  }) {
    return updateClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllClients value)? getAllClients,
    TResult? Function(_GetClientById value)? getClientById,
    TResult? Function(_CreateClient value)? createClient,
    TResult? Function(_UpdateClient value)? updateClient,
    TResult? Function(_DeleteClient value)? deleteClient,
  }) {
    return updateClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllClients value)? getAllClients,
    TResult Function(_GetClientById value)? getClientById,
    TResult Function(_CreateClient value)? createClient,
    TResult Function(_UpdateClient value)? updateClient,
    TResult Function(_DeleteClient value)? deleteClient,
    required TResult orElse(),
  }) {
    if (updateClient != null) {
      return updateClient(this);
    }
    return orElse();
  }
}

abstract class _UpdateClient implements ClientEvent {
  const factory _UpdateClient(final UpdateClientParams params) =
      _$UpdateClientImpl;

  UpdateClientParams get params;
  @JsonKey(ignore: true)
  _$$UpdateClientImplCopyWith<_$UpdateClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteClientImplCopyWith<$Res> {
  factory _$$DeleteClientImplCopyWith(
          _$DeleteClientImpl value, $Res Function(_$DeleteClientImpl) then) =
      __$$DeleteClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$DeleteClientImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$DeleteClientImpl>
    implements _$$DeleteClientImplCopyWith<$Res> {
  __$$DeleteClientImplCopyWithImpl(
      _$DeleteClientImpl _value, $Res Function(_$DeleteClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$DeleteClientImpl(
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteClientImpl implements _DeleteClient {
  const _$DeleteClientImpl(this.clientId);

  @override
  final String clientId;

  @override
  String toString() {
    return 'ClientEvent.deleteClient(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteClientImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteClientImplCopyWith<_$DeleteClientImpl> get copyWith =>
      __$$DeleteClientImplCopyWithImpl<_$DeleteClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllClients,
    required TResult Function(String clientId) getClientById,
    required TResult Function(CreateClientParams params) createClient,
    required TResult Function(UpdateClientParams params) updateClient,
    required TResult Function(String clientId) deleteClient,
  }) {
    return deleteClient(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllClients,
    TResult? Function(String clientId)? getClientById,
    TResult? Function(CreateClientParams params)? createClient,
    TResult? Function(UpdateClientParams params)? updateClient,
    TResult? Function(String clientId)? deleteClient,
  }) {
    return deleteClient?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllClients,
    TResult Function(String clientId)? getClientById,
    TResult Function(CreateClientParams params)? createClient,
    TResult Function(UpdateClientParams params)? updateClient,
    TResult Function(String clientId)? deleteClient,
    required TResult orElse(),
  }) {
    if (deleteClient != null) {
      return deleteClient(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllClients value) getAllClients,
    required TResult Function(_GetClientById value) getClientById,
    required TResult Function(_CreateClient value) createClient,
    required TResult Function(_UpdateClient value) updateClient,
    required TResult Function(_DeleteClient value) deleteClient,
  }) {
    return deleteClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllClients value)? getAllClients,
    TResult? Function(_GetClientById value)? getClientById,
    TResult? Function(_CreateClient value)? createClient,
    TResult? Function(_UpdateClient value)? updateClient,
    TResult? Function(_DeleteClient value)? deleteClient,
  }) {
    return deleteClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllClients value)? getAllClients,
    TResult Function(_GetClientById value)? getClientById,
    TResult Function(_CreateClient value)? createClient,
    TResult Function(_UpdateClient value)? updateClient,
    TResult Function(_DeleteClient value)? deleteClient,
    required TResult orElse(),
  }) {
    if (deleteClient != null) {
      return deleteClient(this);
    }
    return orElse();
  }
}

abstract class _DeleteClient implements ClientEvent {
  const factory _DeleteClient(final String clientId) = _$DeleteClientImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$DeleteClientImplCopyWith<_$DeleteClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) loaded,
    required TResult Function(ClientEntity client) clientLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? loaded,
    TResult? Function(ClientEntity client)? clientLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? loaded,
    TResult Function(ClientEntity client)? clientLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientStateCopyWith<$Res> {
  factory $ClientStateCopyWith(
          ClientState value, $Res Function(ClientState) then) =
      _$ClientStateCopyWithImpl<$Res, ClientState>;
}

/// @nodoc
class _$ClientStateCopyWithImpl<$Res, $Val extends ClientState>
    implements $ClientStateCopyWith<$Res> {
  _$ClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ClientState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) loaded,
    required TResult Function(ClientEntity client) clientLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? loaded,
    TResult? Function(ClientEntity client)? clientLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? loaded,
    TResult Function(ClientEntity client)? clientLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ClientState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ClientState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) loaded,
    required TResult Function(ClientEntity client) clientLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? loaded,
    TResult? Function(ClientEntity client)? clientLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? loaded,
    TResult Function(ClientEntity client)? clientLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ClientState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClientEntity> clients});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clients = null,
  }) {
    return _then(_$LoadedImpl(
      null == clients
          ? _value._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<ClientEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<ClientEntity> clients) : _clients = clients;

  final List<ClientEntity> _clients;
  @override
  List<ClientEntity> get clients {
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clients);
  }

  @override
  String toString() {
    return 'ClientState.loaded(clients: $clients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._clients, _clients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) loaded,
    required TResult Function(ClientEntity client) clientLoaded,
    required TResult Function(String message) error,
  }) {
    return loaded(clients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? loaded,
    TResult? Function(ClientEntity client)? clientLoaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(clients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? loaded,
    TResult Function(ClientEntity client)? clientLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(clients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ClientState {
  const factory _Loaded(final List<ClientEntity> clients) = _$LoadedImpl;

  List<ClientEntity> get clients;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientLoadedImplCopyWith<$Res> {
  factory _$$ClientLoadedImplCopyWith(
          _$ClientLoadedImpl value, $Res Function(_$ClientLoadedImpl) then) =
      __$$ClientLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientEntity client});
}

/// @nodoc
class __$$ClientLoadedImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientLoadedImpl>
    implements _$$ClientLoadedImplCopyWith<$Res> {
  __$$ClientLoadedImplCopyWithImpl(
      _$ClientLoadedImpl _value, $Res Function(_$ClientLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$ClientLoadedImpl(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientEntity,
    ));
  }
}

/// @nodoc

class _$ClientLoadedImpl implements _ClientLoaded {
  const _$ClientLoadedImpl(this.client);

  @override
  final ClientEntity client;

  @override
  String toString() {
    return 'ClientState.clientLoaded(client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientLoadedImpl &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientLoadedImplCopyWith<_$ClientLoadedImpl> get copyWith =>
      __$$ClientLoadedImplCopyWithImpl<_$ClientLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) loaded,
    required TResult Function(ClientEntity client) clientLoaded,
    required TResult Function(String message) error,
  }) {
    return clientLoaded(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? loaded,
    TResult? Function(ClientEntity client)? clientLoaded,
    TResult? Function(String message)? error,
  }) {
    return clientLoaded?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? loaded,
    TResult Function(ClientEntity client)? clientLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (clientLoaded != null) {
      return clientLoaded(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_Error value) error,
  }) {
    return clientLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return clientLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (clientLoaded != null) {
      return clientLoaded(this);
    }
    return orElse();
  }
}

abstract class _ClientLoaded implements ClientState {
  const factory _ClientLoaded(final ClientEntity client) = _$ClientLoadedImpl;

  ClientEntity get client;
  @JsonKey(ignore: true)
  _$$ClientLoadedImplCopyWith<_$ClientLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ClientState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) loaded,
    required TResult Function(ClientEntity client) clientLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? loaded,
    TResult? Function(ClientEntity client)? clientLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? loaded,
    TResult Function(ClientEntity client)? clientLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ClientLoaded value) clientLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ClientLoaded value)? clientLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ClientLoaded value)? clientLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ClientState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
