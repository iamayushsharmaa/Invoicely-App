// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_event.dart';

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
    required TResult Function() fetchClients,
    required TResult Function(ClientEntity request) createClient,
    required TResult Function(String clientId, ClientEntity request)
        updateClient,
    required TResult Function(String clientId) deleteClient,
    required TResult Function(String clientId) getInvoicesByClientId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchClients,
    TResult? Function(ClientEntity request)? createClient,
    TResult? Function(String clientId, ClientEntity request)? updateClient,
    TResult? Function(String clientId)? deleteClient,
    TResult? Function(String clientId)? getInvoicesByClientId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchClients,
    TResult Function(ClientEntity request)? createClient,
    TResult Function(String clientId, ClientEntity request)? updateClient,
    TResult Function(String clientId)? deleteClient,
    TResult Function(String clientId)? getInvoicesByClientId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchClients value) fetchClients,
    required TResult Function(CreateClient value) createClient,
    required TResult Function(UpdateClient value) updateClient,
    required TResult Function(DeleteClient value) deleteClient,
    required TResult Function(GetInvoicesByClientId value)
        getInvoicesByClientId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchClients value)? fetchClients,
    TResult? Function(CreateClient value)? createClient,
    TResult? Function(UpdateClient value)? updateClient,
    TResult? Function(DeleteClient value)? deleteClient,
    TResult? Function(GetInvoicesByClientId value)? getInvoicesByClientId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchClients value)? fetchClients,
    TResult Function(CreateClient value)? createClient,
    TResult Function(UpdateClient value)? updateClient,
    TResult Function(DeleteClient value)? deleteClient,
    TResult Function(GetInvoicesByClientId value)? getInvoicesByClientId,
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
abstract class _$$FetchClientsImplCopyWith<$Res> {
  factory _$$FetchClientsImplCopyWith(
          _$FetchClientsImpl value, $Res Function(_$FetchClientsImpl) then) =
      __$$FetchClientsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchClientsImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$FetchClientsImpl>
    implements _$$FetchClientsImplCopyWith<$Res> {
  __$$FetchClientsImplCopyWithImpl(
      _$FetchClientsImpl _value, $Res Function(_$FetchClientsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchClientsImpl implements FetchClients {
  const _$FetchClientsImpl();

  @override
  String toString() {
    return 'ClientEvent.fetchClients()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchClientsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchClients,
    required TResult Function(ClientEntity request) createClient,
    required TResult Function(String clientId, ClientEntity request)
        updateClient,
    required TResult Function(String clientId) deleteClient,
    required TResult Function(String clientId) getInvoicesByClientId,
  }) {
    return fetchClients();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchClients,
    TResult? Function(ClientEntity request)? createClient,
    TResult? Function(String clientId, ClientEntity request)? updateClient,
    TResult? Function(String clientId)? deleteClient,
    TResult? Function(String clientId)? getInvoicesByClientId,
  }) {
    return fetchClients?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchClients,
    TResult Function(ClientEntity request)? createClient,
    TResult Function(String clientId, ClientEntity request)? updateClient,
    TResult Function(String clientId)? deleteClient,
    TResult Function(String clientId)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (fetchClients != null) {
      return fetchClients();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchClients value) fetchClients,
    required TResult Function(CreateClient value) createClient,
    required TResult Function(UpdateClient value) updateClient,
    required TResult Function(DeleteClient value) deleteClient,
    required TResult Function(GetInvoicesByClientId value)
        getInvoicesByClientId,
  }) {
    return fetchClients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchClients value)? fetchClients,
    TResult? Function(CreateClient value)? createClient,
    TResult? Function(UpdateClient value)? updateClient,
    TResult? Function(DeleteClient value)? deleteClient,
    TResult? Function(GetInvoicesByClientId value)? getInvoicesByClientId,
  }) {
    return fetchClients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchClients value)? fetchClients,
    TResult Function(CreateClient value)? createClient,
    TResult Function(UpdateClient value)? updateClient,
    TResult Function(DeleteClient value)? deleteClient,
    TResult Function(GetInvoicesByClientId value)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (fetchClients != null) {
      return fetchClients(this);
    }
    return orElse();
  }
}

abstract class FetchClients implements ClientEvent {
  const factory FetchClients() = _$FetchClientsImpl;
}

/// @nodoc
abstract class _$$CreateClientImplCopyWith<$Res> {
  factory _$$CreateClientImplCopyWith(
          _$CreateClientImpl value, $Res Function(_$CreateClientImpl) then) =
      __$$CreateClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ClientEntity request});
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
    Object? request = null,
  }) {
    return _then(_$CreateClientImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ClientEntity,
    ));
  }
}

/// @nodoc

class _$CreateClientImpl implements CreateClient {
  const _$CreateClientImpl(this.request);

  @override
  final ClientEntity request;

  @override
  String toString() {
    return 'ClientEvent.createClient(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateClientImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateClientImplCopyWith<_$CreateClientImpl> get copyWith =>
      __$$CreateClientImplCopyWithImpl<_$CreateClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchClients,
    required TResult Function(ClientEntity request) createClient,
    required TResult Function(String clientId, ClientEntity request)
        updateClient,
    required TResult Function(String clientId) deleteClient,
    required TResult Function(String clientId) getInvoicesByClientId,
  }) {
    return createClient(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchClients,
    TResult? Function(ClientEntity request)? createClient,
    TResult? Function(String clientId, ClientEntity request)? updateClient,
    TResult? Function(String clientId)? deleteClient,
    TResult? Function(String clientId)? getInvoicesByClientId,
  }) {
    return createClient?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchClients,
    TResult Function(ClientEntity request)? createClient,
    TResult Function(String clientId, ClientEntity request)? updateClient,
    TResult Function(String clientId)? deleteClient,
    TResult Function(String clientId)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (createClient != null) {
      return createClient(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchClients value) fetchClients,
    required TResult Function(CreateClient value) createClient,
    required TResult Function(UpdateClient value) updateClient,
    required TResult Function(DeleteClient value) deleteClient,
    required TResult Function(GetInvoicesByClientId value)
        getInvoicesByClientId,
  }) {
    return createClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchClients value)? fetchClients,
    TResult? Function(CreateClient value)? createClient,
    TResult? Function(UpdateClient value)? updateClient,
    TResult? Function(DeleteClient value)? deleteClient,
    TResult? Function(GetInvoicesByClientId value)? getInvoicesByClientId,
  }) {
    return createClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchClients value)? fetchClients,
    TResult Function(CreateClient value)? createClient,
    TResult Function(UpdateClient value)? updateClient,
    TResult Function(DeleteClient value)? deleteClient,
    TResult Function(GetInvoicesByClientId value)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (createClient != null) {
      return createClient(this);
    }
    return orElse();
  }
}

abstract class CreateClient implements ClientEvent {
  const factory CreateClient(final ClientEntity request) = _$CreateClientImpl;

  ClientEntity get request;
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
  $Res call({String clientId, ClientEntity request});
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
    Object? clientId = null,
    Object? request = null,
  }) {
    return _then(_$UpdateClientImpl(
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as ClientEntity,
    ));
  }
}

/// @nodoc

class _$UpdateClientImpl implements UpdateClient {
  const _$UpdateClientImpl(this.clientId, this.request);

  @override
  final String clientId;
  @override
  final ClientEntity request;

  @override
  String toString() {
    return 'ClientEvent.updateClient(clientId: $clientId, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateClientImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateClientImplCopyWith<_$UpdateClientImpl> get copyWith =>
      __$$UpdateClientImplCopyWithImpl<_$UpdateClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchClients,
    required TResult Function(ClientEntity request) createClient,
    required TResult Function(String clientId, ClientEntity request)
        updateClient,
    required TResult Function(String clientId) deleteClient,
    required TResult Function(String clientId) getInvoicesByClientId,
  }) {
    return updateClient(clientId, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchClients,
    TResult? Function(ClientEntity request)? createClient,
    TResult? Function(String clientId, ClientEntity request)? updateClient,
    TResult? Function(String clientId)? deleteClient,
    TResult? Function(String clientId)? getInvoicesByClientId,
  }) {
    return updateClient?.call(clientId, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchClients,
    TResult Function(ClientEntity request)? createClient,
    TResult Function(String clientId, ClientEntity request)? updateClient,
    TResult Function(String clientId)? deleteClient,
    TResult Function(String clientId)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (updateClient != null) {
      return updateClient(clientId, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchClients value) fetchClients,
    required TResult Function(CreateClient value) createClient,
    required TResult Function(UpdateClient value) updateClient,
    required TResult Function(DeleteClient value) deleteClient,
    required TResult Function(GetInvoicesByClientId value)
        getInvoicesByClientId,
  }) {
    return updateClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchClients value)? fetchClients,
    TResult? Function(CreateClient value)? createClient,
    TResult? Function(UpdateClient value)? updateClient,
    TResult? Function(DeleteClient value)? deleteClient,
    TResult? Function(GetInvoicesByClientId value)? getInvoicesByClientId,
  }) {
    return updateClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchClients value)? fetchClients,
    TResult Function(CreateClient value)? createClient,
    TResult Function(UpdateClient value)? updateClient,
    TResult Function(DeleteClient value)? deleteClient,
    TResult Function(GetInvoicesByClientId value)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (updateClient != null) {
      return updateClient(this);
    }
    return orElse();
  }
}

abstract class UpdateClient implements ClientEvent {
  const factory UpdateClient(
      final String clientId, final ClientEntity request) = _$UpdateClientImpl;

  String get clientId;
  ClientEntity get request;
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

class _$DeleteClientImpl implements DeleteClient {
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
    required TResult Function() fetchClients,
    required TResult Function(ClientEntity request) createClient,
    required TResult Function(String clientId, ClientEntity request)
        updateClient,
    required TResult Function(String clientId) deleteClient,
    required TResult Function(String clientId) getInvoicesByClientId,
  }) {
    return deleteClient(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchClients,
    TResult? Function(ClientEntity request)? createClient,
    TResult? Function(String clientId, ClientEntity request)? updateClient,
    TResult? Function(String clientId)? deleteClient,
    TResult? Function(String clientId)? getInvoicesByClientId,
  }) {
    return deleteClient?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchClients,
    TResult Function(ClientEntity request)? createClient,
    TResult Function(String clientId, ClientEntity request)? updateClient,
    TResult Function(String clientId)? deleteClient,
    TResult Function(String clientId)? getInvoicesByClientId,
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
    required TResult Function(FetchClients value) fetchClients,
    required TResult Function(CreateClient value) createClient,
    required TResult Function(UpdateClient value) updateClient,
    required TResult Function(DeleteClient value) deleteClient,
    required TResult Function(GetInvoicesByClientId value)
        getInvoicesByClientId,
  }) {
    return deleteClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchClients value)? fetchClients,
    TResult? Function(CreateClient value)? createClient,
    TResult? Function(UpdateClient value)? updateClient,
    TResult? Function(DeleteClient value)? deleteClient,
    TResult? Function(GetInvoicesByClientId value)? getInvoicesByClientId,
  }) {
    return deleteClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchClients value)? fetchClients,
    TResult Function(CreateClient value)? createClient,
    TResult Function(UpdateClient value)? updateClient,
    TResult Function(DeleteClient value)? deleteClient,
    TResult Function(GetInvoicesByClientId value)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (deleteClient != null) {
      return deleteClient(this);
    }
    return orElse();
  }
}

abstract class DeleteClient implements ClientEvent {
  const factory DeleteClient(final String clientId) = _$DeleteClientImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$DeleteClientImplCopyWith<_$DeleteClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInvoicesByClientIdImplCopyWith<$Res> {
  factory _$$GetInvoicesByClientIdImplCopyWith(
          _$GetInvoicesByClientIdImpl value,
          $Res Function(_$GetInvoicesByClientIdImpl) then) =
      __$$GetInvoicesByClientIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$GetInvoicesByClientIdImplCopyWithImpl<$Res>
    extends _$ClientEventCopyWithImpl<$Res, _$GetInvoicesByClientIdImpl>
    implements _$$GetInvoicesByClientIdImplCopyWith<$Res> {
  __$$GetInvoicesByClientIdImplCopyWithImpl(_$GetInvoicesByClientIdImpl _value,
      $Res Function(_$GetInvoicesByClientIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$GetInvoicesByClientIdImpl(
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoicesByClientIdImpl implements GetInvoicesByClientId {
  const _$GetInvoicesByClientIdImpl(this.clientId);

  @override
  final String clientId;

  @override
  String toString() {
    return 'ClientEvent.getInvoicesByClientId(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoicesByClientIdImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoicesByClientIdImplCopyWith<_$GetInvoicesByClientIdImpl>
      get copyWith => __$$GetInvoicesByClientIdImplCopyWithImpl<
          _$GetInvoicesByClientIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchClients,
    required TResult Function(ClientEntity request) createClient,
    required TResult Function(String clientId, ClientEntity request)
        updateClient,
    required TResult Function(String clientId) deleteClient,
    required TResult Function(String clientId) getInvoicesByClientId,
  }) {
    return getInvoicesByClientId(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchClients,
    TResult? Function(ClientEntity request)? createClient,
    TResult? Function(String clientId, ClientEntity request)? updateClient,
    TResult? Function(String clientId)? deleteClient,
    TResult? Function(String clientId)? getInvoicesByClientId,
  }) {
    return getInvoicesByClientId?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchClients,
    TResult Function(ClientEntity request)? createClient,
    TResult Function(String clientId, ClientEntity request)? updateClient,
    TResult Function(String clientId)? deleteClient,
    TResult Function(String clientId)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (getInvoicesByClientId != null) {
      return getInvoicesByClientId(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchClients value) fetchClients,
    required TResult Function(CreateClient value) createClient,
    required TResult Function(UpdateClient value) updateClient,
    required TResult Function(DeleteClient value) deleteClient,
    required TResult Function(GetInvoicesByClientId value)
        getInvoicesByClientId,
  }) {
    return getInvoicesByClientId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchClients value)? fetchClients,
    TResult? Function(CreateClient value)? createClient,
    TResult? Function(UpdateClient value)? updateClient,
    TResult? Function(DeleteClient value)? deleteClient,
    TResult? Function(GetInvoicesByClientId value)? getInvoicesByClientId,
  }) {
    return getInvoicesByClientId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchClients value)? fetchClients,
    TResult Function(CreateClient value)? createClient,
    TResult Function(UpdateClient value)? updateClient,
    TResult Function(DeleteClient value)? deleteClient,
    TResult Function(GetInvoicesByClientId value)? getInvoicesByClientId,
    required TResult orElse(),
  }) {
    if (getInvoicesByClientId != null) {
      return getInvoicesByClientId(this);
    }
    return orElse();
  }
}

abstract class GetInvoicesByClientId implements ClientEvent {
  const factory GetInvoicesByClientId(final String clientId) =
      _$GetInvoicesByClientIdImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$GetInvoicesByClientIdImplCopyWith<_$GetInvoicesByClientIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}
