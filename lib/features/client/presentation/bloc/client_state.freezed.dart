// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClientState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
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

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
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
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
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

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
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
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
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
abstract class _$$ClientsLoadedImplCopyWith<$Res> {
  factory _$$ClientsLoadedImplCopyWith(
          _$ClientsLoadedImpl value, $Res Function(_$ClientsLoadedImpl) then) =
      __$$ClientsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClientEntity> clients});
}

/// @nodoc
class __$$ClientsLoadedImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientsLoadedImpl>
    implements _$$ClientsLoadedImplCopyWith<$Res> {
  __$$ClientsLoadedImplCopyWithImpl(
      _$ClientsLoadedImpl _value, $Res Function(_$ClientsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clients = null,
  }) {
    return _then(_$ClientsLoadedImpl(
      null == clients
          ? _value._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<ClientEntity>,
    ));
  }
}

/// @nodoc

class _$ClientsLoadedImpl implements _ClientsLoaded {
  const _$ClientsLoadedImpl(final List<ClientEntity> clients)
      : _clients = clients;

  final List<ClientEntity> _clients;
  @override
  List<ClientEntity> get clients {
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clients);
  }

  @override
  String toString() {
    return 'ClientState.clientsLoaded(clients: $clients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientsLoadedImpl &&
            const DeepCollectionEquality().equals(other._clients, _clients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clients));

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientsLoadedImplCopyWith<_$ClientsLoadedImpl> get copyWith =>
      __$$ClientsLoadedImplCopyWithImpl<_$ClientsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) {
    return clientsLoaded(clients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) {
    return clientsLoaded?.call(clients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (clientsLoaded != null) {
      return clientsLoaded(clients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return clientsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return clientsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (clientsLoaded != null) {
      return clientsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ClientsLoaded implements ClientState {
  const factory _ClientsLoaded(final List<ClientEntity> clients) =
      _$ClientsLoadedImpl;

  List<ClientEntity> get clients;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientsLoadedImplCopyWith<_$ClientsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClientSuccessImplCopyWith<$Res> {
  factory _$$ClientSuccessImplCopyWith(
          _$ClientSuccessImpl value, $Res Function(_$ClientSuccessImpl) then) =
      __$$ClientSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ClientSuccessImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientSuccessImpl>
    implements _$$ClientSuccessImplCopyWith<$Res> {
  __$$ClientSuccessImplCopyWithImpl(
      _$ClientSuccessImpl _value, $Res Function(_$ClientSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ClientSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientSuccessImpl implements _ClientSuccess {
  const _$ClientSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ClientState.clientSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientSuccessImplCopyWith<_$ClientSuccessImpl> get copyWith =>
      __$$ClientSuccessImplCopyWithImpl<_$ClientSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) {
    return clientSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) {
    return clientSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (clientSuccess != null) {
      return clientSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return clientSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return clientSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (clientSuccess != null) {
      return clientSuccess(this);
    }
    return orElse();
  }
}

abstract class _ClientSuccess implements ClientState {
  const factory _ClientSuccess(final String message) = _$ClientSuccessImpl;

  String get message;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientSuccessImplCopyWith<_$ClientSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoicesLoadedImplCopyWith<$Res> {
  factory _$$InvoicesLoadedImplCopyWith(_$InvoicesLoadedImpl value,
          $Res Function(_$InvoicesLoadedImpl) then) =
      __$$InvoicesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceEntity> invoices});
}

/// @nodoc
class __$$InvoicesLoadedImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$InvoicesLoadedImpl>
    implements _$$InvoicesLoadedImplCopyWith<$Res> {
  __$$InvoicesLoadedImplCopyWithImpl(
      _$InvoicesLoadedImpl _value, $Res Function(_$InvoicesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
  }) {
    return _then(_$InvoicesLoadedImpl(
      null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceEntity>,
    ));
  }
}

/// @nodoc

class _$InvoicesLoadedImpl implements _InvoicesLoaded {
  const _$InvoicesLoadedImpl(final List<InvoiceEntity> invoices)
      : _invoices = invoices;

  final List<InvoiceEntity> _invoices;
  @override
  List<InvoiceEntity> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  @override
  String toString() {
    return 'ClientState.invoicesLoaded(invoices: $invoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoicesLoadedImpl &&
            const DeepCollectionEquality().equals(other._invoices, _invoices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_invoices));

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicesLoadedImplCopyWith<_$InvoicesLoadedImpl> get copyWith =>
      __$$InvoicesLoadedImplCopyWithImpl<_$InvoicesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) {
    return invoicesLoaded(invoices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) {
    return invoicesLoaded?.call(invoices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (invoicesLoaded != null) {
      return invoicesLoaded(invoices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return invoicesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return invoicesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (invoicesLoaded != null) {
      return invoicesLoaded(this);
    }
    return orElse();
  }
}

abstract class _InvoicesLoaded implements ClientState {
  const factory _InvoicesLoaded(final List<InvoiceEntity> invoices) =
      _$InvoicesLoadedImpl;

  List<InvoiceEntity> get invoices;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoicesLoadedImplCopyWith<_$InvoicesLoadedImpl> get copyWith =>
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

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ClientEntity> clients) clientsLoaded,
    required TResult Function(String message) clientSuccess,
    required TResult Function(List<InvoiceEntity> invoices) invoicesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ClientEntity> clients)? clientsLoaded,
    TResult? Function(String message)? clientSuccess,
    TResult? Function(List<InvoiceEntity> invoices)? invoicesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ClientEntity> clients)? clientsLoaded,
    TResult Function(String message)? clientSuccess,
    TResult Function(List<InvoiceEntity> invoices)? invoicesLoaded,
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
    required TResult Function(_ClientsLoaded value) clientsLoaded,
    required TResult Function(_ClientSuccess value) clientSuccess,
    required TResult Function(_InvoicesLoaded value) invoicesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ClientsLoaded value)? clientsLoaded,
    TResult? Function(_ClientSuccess value)? clientSuccess,
    TResult? Function(_InvoicesLoaded value)? invoicesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ClientsLoaded value)? clientsLoaded,
    TResult Function(_ClientSuccess value)? clientSuccess,
    TResult Function(_InvoicesLoaded value)? invoicesLoaded,
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

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
