// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceEventCopyWith<$Res> {
  factory $InvoiceEventCopyWith(
          InvoiceEvent value, $Res Function(InvoiceEvent) then) =
      _$InvoiceEventCopyWithImpl<$Res, InvoiceEvent>;
}

/// @nodoc
class _$InvoiceEventCopyWithImpl<$Res, $Val extends InvoiceEvent>
    implements $InvoiceEventCopyWith<$Res> {
  _$InvoiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadInvoicesImplCopyWith<$Res> {
  factory _$$LoadInvoicesImplCopyWith(
          _$LoadInvoicesImpl value, $Res Function(_$LoadInvoicesImpl) then) =
      __$$LoadInvoicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInvoicesImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$LoadInvoicesImpl>
    implements _$$LoadInvoicesImplCopyWith<$Res> {
  __$$LoadInvoicesImplCopyWithImpl(
      _$LoadInvoicesImpl _value, $Res Function(_$LoadInvoicesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInvoicesImpl implements LoadInvoices {
  const _$LoadInvoicesImpl();

  @override
  String toString() {
    return 'InvoiceEvent.loadInvoices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInvoicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return loadInvoices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return loadInvoices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (loadInvoices != null) {
      return loadInvoices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return loadInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return loadInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (loadInvoices != null) {
      return loadInvoices(this);
    }
    return orElse();
  }
}

abstract class LoadInvoices implements InvoiceEvent {
  const factory LoadInvoices() = _$LoadInvoicesImpl;
}

/// @nodoc
abstract class _$$LoadInvoiceByIdImplCopyWith<$Res> {
  factory _$$LoadInvoiceByIdImplCopyWith(_$LoadInvoiceByIdImpl value,
          $Res Function(_$LoadInvoiceByIdImpl) then) =
      __$$LoadInvoiceByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceId});
}

/// @nodoc
class __$$LoadInvoiceByIdImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$LoadInvoiceByIdImpl>
    implements _$$LoadInvoiceByIdImplCopyWith<$Res> {
  __$$LoadInvoiceByIdImplCopyWithImpl(
      _$LoadInvoiceByIdImpl _value, $Res Function(_$LoadInvoiceByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
  }) {
    return _then(_$LoadInvoiceByIdImpl(
      null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadInvoiceByIdImpl implements LoadInvoiceById {
  const _$LoadInvoiceByIdImpl(this.invoiceId);

  @override
  final String invoiceId;

  @override
  String toString() {
    return 'InvoiceEvent.loadInvoiceById(invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInvoiceByIdImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInvoiceByIdImplCopyWith<_$LoadInvoiceByIdImpl> get copyWith =>
      __$$LoadInvoiceByIdImplCopyWithImpl<_$LoadInvoiceByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return loadInvoiceById(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return loadInvoiceById?.call(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (loadInvoiceById != null) {
      return loadInvoiceById(invoiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return loadInvoiceById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return loadInvoiceById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (loadInvoiceById != null) {
      return loadInvoiceById(this);
    }
    return orElse();
  }
}

abstract class LoadInvoiceById implements InvoiceEvent {
  const factory LoadInvoiceById(final String invoiceId) = _$LoadInvoiceByIdImpl;

  String get invoiceId;
  @JsonKey(ignore: true)
  _$$LoadInvoiceByIdImplCopyWith<_$LoadInvoiceByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInvoicesByClientImplCopyWith<$Res> {
  factory _$$LoadInvoicesByClientImplCopyWith(_$LoadInvoicesByClientImpl value,
          $Res Function(_$LoadInvoicesByClientImpl) then) =
      __$$LoadInvoicesByClientImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String clientId});
}

/// @nodoc
class __$$LoadInvoicesByClientImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$LoadInvoicesByClientImpl>
    implements _$$LoadInvoicesByClientImplCopyWith<$Res> {
  __$$LoadInvoicesByClientImplCopyWithImpl(_$LoadInvoicesByClientImpl _value,
      $Res Function(_$LoadInvoicesByClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
  }) {
    return _then(_$LoadInvoicesByClientImpl(
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadInvoicesByClientImpl implements LoadInvoicesByClient {
  const _$LoadInvoicesByClientImpl(this.clientId);

  @override
  final String clientId;

  @override
  String toString() {
    return 'InvoiceEvent.loadInvoicesByClient(clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInvoicesByClientImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInvoicesByClientImplCopyWith<_$LoadInvoicesByClientImpl>
      get copyWith =>
          __$$LoadInvoicesByClientImplCopyWithImpl<_$LoadInvoicesByClientImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return loadInvoicesByClient(clientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return loadInvoicesByClient?.call(clientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (loadInvoicesByClient != null) {
      return loadInvoicesByClient(clientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return loadInvoicesByClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return loadInvoicesByClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (loadInvoicesByClient != null) {
      return loadInvoicesByClient(this);
    }
    return orElse();
  }
}

abstract class LoadInvoicesByClient implements InvoiceEvent {
  const factory LoadInvoicesByClient(final String clientId) =
      _$LoadInvoicesByClientImpl;

  String get clientId;
  @JsonKey(ignore: true)
  _$$LoadInvoicesByClientImplCopyWith<_$LoadInvoicesByClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateInvoiceImplCopyWith<$Res> {
  factory _$$CreateInvoiceImplCopyWith(
          _$CreateInvoiceImpl value, $Res Function(_$CreateInvoiceImpl) then) =
      __$$CreateInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateInvoiceParams params});
}

/// @nodoc
class __$$CreateInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$CreateInvoiceImpl>
    implements _$$CreateInvoiceImplCopyWith<$Res> {
  __$$CreateInvoiceImplCopyWithImpl(
      _$CreateInvoiceImpl _value, $Res Function(_$CreateInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CreateInvoiceImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CreateInvoiceParams,
    ));
  }
}

/// @nodoc

class _$CreateInvoiceImpl implements CreateInvoice {
  const _$CreateInvoiceImpl(this.params);

  @override
  final CreateInvoiceParams params;

  @override
  String toString() {
    return 'InvoiceEvent.createInvoice(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvoiceImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvoiceImplCopyWith<_$CreateInvoiceImpl> get copyWith =>
      __$$CreateInvoiceImplCopyWithImpl<_$CreateInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return createInvoice(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return createInvoice?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (createInvoice != null) {
      return createInvoice(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return createInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return createInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (createInvoice != null) {
      return createInvoice(this);
    }
    return orElse();
  }
}

abstract class CreateInvoice implements InvoiceEvent {
  const factory CreateInvoice(final CreateInvoiceParams params) =
      _$CreateInvoiceImpl;

  CreateInvoiceParams get params;
  @JsonKey(ignore: true)
  _$$CreateInvoiceImplCopyWith<_$CreateInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInvoiceImplCopyWith<$Res> {
  factory _$$UpdateInvoiceImplCopyWith(
          _$UpdateInvoiceImpl value, $Res Function(_$UpdateInvoiceImpl) then) =
      __$$UpdateInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateInvoiceParams params});
}

/// @nodoc
class __$$UpdateInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$UpdateInvoiceImpl>
    implements _$$UpdateInvoiceImplCopyWith<$Res> {
  __$$UpdateInvoiceImplCopyWithImpl(
      _$UpdateInvoiceImpl _value, $Res Function(_$UpdateInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$UpdateInvoiceImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as UpdateInvoiceParams,
    ));
  }
}

/// @nodoc

class _$UpdateInvoiceImpl implements UpdateInvoice {
  const _$UpdateInvoiceImpl(this.params);

  @override
  final UpdateInvoiceParams params;

  @override
  String toString() {
    return 'InvoiceEvent.updateInvoice(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInvoiceImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInvoiceImplCopyWith<_$UpdateInvoiceImpl> get copyWith =>
      __$$UpdateInvoiceImplCopyWithImpl<_$UpdateInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return updateInvoice(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return updateInvoice?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (updateInvoice != null) {
      return updateInvoice(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return updateInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return updateInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (updateInvoice != null) {
      return updateInvoice(this);
    }
    return orElse();
  }
}

abstract class UpdateInvoice implements InvoiceEvent {
  const factory UpdateInvoice(final UpdateInvoiceParams params) =
      _$UpdateInvoiceImpl;

  UpdateInvoiceParams get params;
  @JsonKey(ignore: true)
  _$$UpdateInvoiceImplCopyWith<_$UpdateInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteInvoiceImplCopyWith<$Res> {
  factory _$$DeleteInvoiceImplCopyWith(
          _$DeleteInvoiceImpl value, $Res Function(_$DeleteInvoiceImpl) then) =
      __$$DeleteInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceId});
}

/// @nodoc
class __$$DeleteInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$DeleteInvoiceImpl>
    implements _$$DeleteInvoiceImplCopyWith<$Res> {
  __$$DeleteInvoiceImplCopyWithImpl(
      _$DeleteInvoiceImpl _value, $Res Function(_$DeleteInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
  }) {
    return _then(_$DeleteInvoiceImpl(
      null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteInvoiceImpl implements DeleteInvoice {
  const _$DeleteInvoiceImpl(this.invoiceId);

  @override
  final String invoiceId;

  @override
  String toString() {
    return 'InvoiceEvent.deleteInvoice(invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteInvoiceImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteInvoiceImplCopyWith<_$DeleteInvoiceImpl> get copyWith =>
      __$$DeleteInvoiceImplCopyWithImpl<_$DeleteInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return deleteInvoice(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return deleteInvoice?.call(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (deleteInvoice != null) {
      return deleteInvoice(invoiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return deleteInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return deleteInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (deleteInvoice != null) {
      return deleteInvoice(this);
    }
    return orElse();
  }
}

abstract class DeleteInvoice implements InvoiceEvent {
  const factory DeleteInvoice(final String invoiceId) = _$DeleteInvoiceImpl;

  String get invoiceId;
  @JsonKey(ignore: true)
  _$$DeleteInvoiceImplCopyWith<_$DeleteInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsPaidImplCopyWith<$Res> {
  factory _$$MarkAsPaidImplCopyWith(
          _$MarkAsPaidImpl value, $Res Function(_$MarkAsPaidImpl) then) =
      __$$MarkAsPaidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceId});
}

/// @nodoc
class __$$MarkAsPaidImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$MarkAsPaidImpl>
    implements _$$MarkAsPaidImplCopyWith<$Res> {
  __$$MarkAsPaidImplCopyWithImpl(
      _$MarkAsPaidImpl _value, $Res Function(_$MarkAsPaidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
  }) {
    return _then(_$MarkAsPaidImpl(
      null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsPaidImpl implements MarkAsPaid {
  const _$MarkAsPaidImpl(this.invoiceId);

  @override
  final String invoiceId;

  @override
  String toString() {
    return 'InvoiceEvent.markAsPaid(invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsPaidImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsPaidImplCopyWith<_$MarkAsPaidImpl> get copyWith =>
      __$$MarkAsPaidImplCopyWithImpl<_$MarkAsPaidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return markAsPaid(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return markAsPaid?.call(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (markAsPaid != null) {
      return markAsPaid(invoiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return markAsPaid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return markAsPaid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (markAsPaid != null) {
      return markAsPaid(this);
    }
    return orElse();
  }
}

abstract class MarkAsPaid implements InvoiceEvent {
  const factory MarkAsPaid(final String invoiceId) = _$MarkAsPaidImpl;

  String get invoiceId;
  @JsonKey(ignore: true)
  _$$MarkAsPaidImplCopyWith<_$MarkAsPaidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchInvoicesImplCopyWith<$Res> {
  factory _$$SearchInvoicesImplCopyWith(_$SearchInvoicesImpl value,
          $Res Function(_$SearchInvoicesImpl) then) =
      __$$SearchInvoicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchInvoiceParams params});
}

/// @nodoc
class __$$SearchInvoicesImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$SearchInvoicesImpl>
    implements _$$SearchInvoicesImplCopyWith<$Res> {
  __$$SearchInvoicesImplCopyWithImpl(
      _$SearchInvoicesImpl _value, $Res Function(_$SearchInvoicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$SearchInvoicesImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SearchInvoiceParams,
    ));
  }
}

/// @nodoc

class _$SearchInvoicesImpl implements SearchInvoices {
  const _$SearchInvoicesImpl(this.params);

  @override
  final SearchInvoiceParams params;

  @override
  String toString() {
    return 'InvoiceEvent.searchInvoices(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInvoicesImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInvoicesImplCopyWith<_$SearchInvoicesImpl> get copyWith =>
      __$$SearchInvoicesImplCopyWithImpl<_$SearchInvoicesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return searchInvoices(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return searchInvoices?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (searchInvoices != null) {
      return searchInvoices(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return searchInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return searchInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (searchInvoices != null) {
      return searchInvoices(this);
    }
    return orElse();
  }
}

abstract class SearchInvoices implements InvoiceEvent {
  const factory SearchInvoices(final SearchInvoiceParams params) =
      _$SearchInvoicesImpl;

  SearchInvoiceParams get params;
  @JsonKey(ignore: true)
  _$$SearchInvoicesImplCopyWith<_$SearchInvoicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectedInvoiceImplCopyWith<$Res> {
  factory _$$ClearSelectedInvoiceImplCopyWith(_$ClearSelectedInvoiceImpl value,
          $Res Function(_$ClearSelectedInvoiceImpl) then) =
      __$$ClearSelectedInvoiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectedInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$ClearSelectedInvoiceImpl>
    implements _$$ClearSelectedInvoiceImplCopyWith<$Res> {
  __$$ClearSelectedInvoiceImplCopyWithImpl(_$ClearSelectedInvoiceImpl _value,
      $Res Function(_$ClearSelectedInvoiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSelectedInvoiceImpl implements ClearSelectedInvoice {
  const _$ClearSelectedInvoiceImpl();

  @override
  String toString() {
    return 'InvoiceEvent.clearSelectedInvoice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectedInvoiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String invoiceId) loadInvoiceById,
    required TResult Function(String clientId) loadInvoicesByClient,
    required TResult Function(CreateInvoiceParams params) createInvoice,
    required TResult Function(UpdateInvoiceParams params) updateInvoice,
    required TResult Function(String invoiceId) deleteInvoice,
    required TResult Function(String invoiceId) markAsPaid,
    required TResult Function(SearchInvoiceParams params) searchInvoices,
    required TResult Function() clearSelectedInvoice,
  }) {
    return clearSelectedInvoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String invoiceId)? loadInvoiceById,
    TResult? Function(String clientId)? loadInvoicesByClient,
    TResult? Function(CreateInvoiceParams params)? createInvoice,
    TResult? Function(UpdateInvoiceParams params)? updateInvoice,
    TResult? Function(String invoiceId)? deleteInvoice,
    TResult? Function(String invoiceId)? markAsPaid,
    TResult? Function(SearchInvoiceParams params)? searchInvoices,
    TResult? Function()? clearSelectedInvoice,
  }) {
    return clearSelectedInvoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String invoiceId)? loadInvoiceById,
    TResult Function(String clientId)? loadInvoicesByClient,
    TResult Function(CreateInvoiceParams params)? createInvoice,
    TResult Function(UpdateInvoiceParams params)? updateInvoice,
    TResult Function(String invoiceId)? deleteInvoice,
    TResult Function(String invoiceId)? markAsPaid,
    TResult Function(SearchInvoiceParams params)? searchInvoices,
    TResult Function()? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (clearSelectedInvoice != null) {
      return clearSelectedInvoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(LoadInvoiceById value) loadInvoiceById,
    required TResult Function(LoadInvoicesByClient value) loadInvoicesByClient,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(MarkAsPaid value) markAsPaid,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(ClearSelectedInvoice value) clearSelectedInvoice,
  }) {
    return clearSelectedInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(LoadInvoiceById value)? loadInvoiceById,
    TResult? Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(MarkAsPaid value)? markAsPaid,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(ClearSelectedInvoice value)? clearSelectedInvoice,
  }) {
    return clearSelectedInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(LoadInvoiceById value)? loadInvoiceById,
    TResult Function(LoadInvoicesByClient value)? loadInvoicesByClient,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(MarkAsPaid value)? markAsPaid,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(ClearSelectedInvoice value)? clearSelectedInvoice,
    required TResult orElse(),
  }) {
    if (clearSelectedInvoice != null) {
      return clearSelectedInvoice(this);
    }
    return orElse();
  }
}

abstract class ClearSelectedInvoice implements InvoiceEvent {
  const factory ClearSelectedInvoice() = _$ClearSelectedInvoiceImpl;
}

/// @nodoc
mixin _$InvoiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceStateCopyWith<$Res> {
  factory $InvoiceStateCopyWith(
          InvoiceState value, $Res Function(InvoiceState) then) =
      _$InvoiceStateCopyWithImpl<$Res, InvoiceState>;
}

/// @nodoc
class _$InvoiceStateCopyWithImpl<$Res, $Val extends InvoiceState>
    implements $InvoiceStateCopyWith<$Res> {
  _$InvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvoiceInitialImplCopyWith<$Res> {
  factory _$$InvoiceInitialImplCopyWith(_$InvoiceInitialImpl value,
          $Res Function(_$InvoiceInitialImpl) then) =
      __$$InvoiceInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceInitialImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceInitialImpl>
    implements _$$InvoiceInitialImplCopyWith<$Res> {
  __$$InvoiceInitialImplCopyWithImpl(
      _$InvoiceInitialImpl _value, $Res Function(_$InvoiceInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceInitialImpl implements InvoiceInitial {
  const _$InvoiceInitialImpl();

  @override
  String toString() {
    return 'InvoiceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvoiceInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
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
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InvoiceInitial implements InvoiceState {
  const factory InvoiceInitial() = _$InvoiceInitialImpl;
}

/// @nodoc
abstract class _$$InvoiceListLoadingImplCopyWith<$Res> {
  factory _$$InvoiceListLoadingImplCopyWith(_$InvoiceListLoadingImpl value,
          $Res Function(_$InvoiceListLoadingImpl) then) =
      __$$InvoiceListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceListLoadingImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceListLoadingImpl>
    implements _$$InvoiceListLoadingImplCopyWith<$Res> {
  __$$InvoiceListLoadingImplCopyWithImpl(_$InvoiceListLoadingImpl _value,
      $Res Function(_$InvoiceListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceListLoadingImpl implements InvoiceListLoading {
  const _$InvoiceListLoadingImpl();

  @override
  String toString() {
    return 'InvoiceState.listLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvoiceListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return listLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return listLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (listLoading != null) {
      return listLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return listLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return listLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (listLoading != null) {
      return listLoading(this);
    }
    return orElse();
  }
}

abstract class InvoiceListLoading implements InvoiceState {
  const factory InvoiceListLoading() = _$InvoiceListLoadingImpl;
}

/// @nodoc
abstract class _$$InvoiceListLoadedImplCopyWith<$Res> {
  factory _$$InvoiceListLoadedImplCopyWith(_$InvoiceListLoadedImpl value,
          $Res Function(_$InvoiceListLoadedImpl) then) =
      __$$InvoiceListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceEntity> invoices});
}

/// @nodoc
class __$$InvoiceListLoadedImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceListLoadedImpl>
    implements _$$InvoiceListLoadedImplCopyWith<$Res> {
  __$$InvoiceListLoadedImplCopyWithImpl(_$InvoiceListLoadedImpl _value,
      $Res Function(_$InvoiceListLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoices = null,
  }) {
    return _then(_$InvoiceListLoadedImpl(
      null == invoices
          ? _value._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<InvoiceEntity>,
    ));
  }
}

/// @nodoc

class _$InvoiceListLoadedImpl implements InvoiceListLoaded {
  const _$InvoiceListLoadedImpl(final List<InvoiceEntity> invoices)
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
    return 'InvoiceState.listLoaded(invoices: $invoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceListLoadedImpl &&
            const DeepCollectionEquality().equals(other._invoices, _invoices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_invoices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceListLoadedImplCopyWith<_$InvoiceListLoadedImpl> get copyWith =>
      __$$InvoiceListLoadedImplCopyWithImpl<_$InvoiceListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return listLoaded(invoices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return listLoaded?.call(invoices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(invoices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return listLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return listLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(this);
    }
    return orElse();
  }
}

abstract class InvoiceListLoaded implements InvoiceState {
  const factory InvoiceListLoaded(final List<InvoiceEntity> invoices) =
      _$InvoiceListLoadedImpl;

  List<InvoiceEntity> get invoices;
  @JsonKey(ignore: true)
  _$$InvoiceListLoadedImplCopyWith<_$InvoiceListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceListErrorImplCopyWith<$Res> {
  factory _$$InvoiceListErrorImplCopyWith(_$InvoiceListErrorImpl value,
          $Res Function(_$InvoiceListErrorImpl) then) =
      __$$InvoiceListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvoiceListErrorImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceListErrorImpl>
    implements _$$InvoiceListErrorImplCopyWith<$Res> {
  __$$InvoiceListErrorImplCopyWithImpl(_$InvoiceListErrorImpl _value,
      $Res Function(_$InvoiceListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvoiceListErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceListErrorImpl implements InvoiceListError {
  const _$InvoiceListErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InvoiceState.listError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceListErrorImplCopyWith<_$InvoiceListErrorImpl> get copyWith =>
      __$$InvoiceListErrorImplCopyWithImpl<_$InvoiceListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return listError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return listError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (listError != null) {
      return listError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return listError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return listError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (listError != null) {
      return listError(this);
    }
    return orElse();
  }
}

abstract class InvoiceListError implements InvoiceState {
  const factory InvoiceListError(final String message) = _$InvoiceListErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvoiceListErrorImplCopyWith<_$InvoiceListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceDetailLoadingImplCopyWith<$Res> {
  factory _$$InvoiceDetailLoadingImplCopyWith(_$InvoiceDetailLoadingImpl value,
          $Res Function(_$InvoiceDetailLoadingImpl) then) =
      __$$InvoiceDetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceDetailLoadingImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceDetailLoadingImpl>
    implements _$$InvoiceDetailLoadingImplCopyWith<$Res> {
  __$$InvoiceDetailLoadingImplCopyWithImpl(_$InvoiceDetailLoadingImpl _value,
      $Res Function(_$InvoiceDetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceDetailLoadingImpl implements InvoiceDetailLoading {
  const _$InvoiceDetailLoadingImpl();

  @override
  String toString() {
    return 'InvoiceState.detailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return detailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return detailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (detailLoading != null) {
      return detailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return detailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return detailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (detailLoading != null) {
      return detailLoading(this);
    }
    return orElse();
  }
}

abstract class InvoiceDetailLoading implements InvoiceState {
  const factory InvoiceDetailLoading() = _$InvoiceDetailLoadingImpl;
}

/// @nodoc
abstract class _$$InvoiceDetailLoadedImplCopyWith<$Res> {
  factory _$$InvoiceDetailLoadedImplCopyWith(_$InvoiceDetailLoadedImpl value,
          $Res Function(_$InvoiceDetailLoadedImpl) then) =
      __$$InvoiceDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InvoiceEntity invoice});
}

/// @nodoc
class __$$InvoiceDetailLoadedImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceDetailLoadedImpl>
    implements _$$InvoiceDetailLoadedImplCopyWith<$Res> {
  __$$InvoiceDetailLoadedImplCopyWithImpl(_$InvoiceDetailLoadedImpl _value,
      $Res Function(_$InvoiceDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = null,
  }) {
    return _then(_$InvoiceDetailLoadedImpl(
      null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceEntity,
    ));
  }
}

/// @nodoc

class _$InvoiceDetailLoadedImpl implements InvoiceDetailLoaded {
  const _$InvoiceDetailLoadedImpl(this.invoice);

  @override
  final InvoiceEntity invoice;

  @override
  String toString() {
    return 'InvoiceState.detailLoaded(invoice: $invoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDetailLoadedImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDetailLoadedImplCopyWith<_$InvoiceDetailLoadedImpl> get copyWith =>
      __$$InvoiceDetailLoadedImplCopyWithImpl<_$InvoiceDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return detailLoaded(invoice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return detailLoaded?.call(invoice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(invoice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return detailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return detailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(this);
    }
    return orElse();
  }
}

abstract class InvoiceDetailLoaded implements InvoiceState {
  const factory InvoiceDetailLoaded(final InvoiceEntity invoice) =
      _$InvoiceDetailLoadedImpl;

  InvoiceEntity get invoice;
  @JsonKey(ignore: true)
  _$$InvoiceDetailLoadedImplCopyWith<_$InvoiceDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceDetailErrorImplCopyWith<$Res> {
  factory _$$InvoiceDetailErrorImplCopyWith(_$InvoiceDetailErrorImpl value,
          $Res Function(_$InvoiceDetailErrorImpl) then) =
      __$$InvoiceDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvoiceDetailErrorImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceDetailErrorImpl>
    implements _$$InvoiceDetailErrorImplCopyWith<$Res> {
  __$$InvoiceDetailErrorImplCopyWithImpl(_$InvoiceDetailErrorImpl _value,
      $Res Function(_$InvoiceDetailErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvoiceDetailErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceDetailErrorImpl implements InvoiceDetailError {
  const _$InvoiceDetailErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InvoiceState.detailError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDetailErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDetailErrorImplCopyWith<_$InvoiceDetailErrorImpl> get copyWith =>
      __$$InvoiceDetailErrorImplCopyWithImpl<_$InvoiceDetailErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return detailError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return detailError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (detailError != null) {
      return detailError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return detailError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return detailError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (detailError != null) {
      return detailError(this);
    }
    return orElse();
  }
}

abstract class InvoiceDetailError implements InvoiceState {
  const factory InvoiceDetailError(final String message) =
      _$InvoiceDetailErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvoiceDetailErrorImplCopyWith<_$InvoiceDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceActionLoadingImplCopyWith<$Res> {
  factory _$$InvoiceActionLoadingImplCopyWith(_$InvoiceActionLoadingImpl value,
          $Res Function(_$InvoiceActionLoadingImpl) then) =
      __$$InvoiceActionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceActionLoadingImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceActionLoadingImpl>
    implements _$$InvoiceActionLoadingImplCopyWith<$Res> {
  __$$InvoiceActionLoadingImplCopyWithImpl(_$InvoiceActionLoadingImpl _value,
      $Res Function(_$InvoiceActionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceActionLoadingImpl implements InvoiceActionLoading {
  const _$InvoiceActionLoadingImpl();

  @override
  String toString() {
    return 'InvoiceState.actionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceActionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return actionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return actionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (actionLoading != null) {
      return actionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return actionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return actionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (actionLoading != null) {
      return actionLoading(this);
    }
    return orElse();
  }
}

abstract class InvoiceActionLoading implements InvoiceState {
  const factory InvoiceActionLoading() = _$InvoiceActionLoadingImpl;
}

/// @nodoc
abstract class _$$InvoiceActionSuccessImplCopyWith<$Res> {
  factory _$$InvoiceActionSuccessImplCopyWith(_$InvoiceActionSuccessImpl value,
          $Res Function(_$InvoiceActionSuccessImpl) then) =
      __$$InvoiceActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvoiceActionSuccessImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceActionSuccessImpl>
    implements _$$InvoiceActionSuccessImplCopyWith<$Res> {
  __$$InvoiceActionSuccessImplCopyWithImpl(_$InvoiceActionSuccessImpl _value,
      $Res Function(_$InvoiceActionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvoiceActionSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceActionSuccessImpl implements InvoiceActionSuccess {
  const _$InvoiceActionSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InvoiceState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceActionSuccessImplCopyWith<_$InvoiceActionSuccessImpl>
      get copyWith =>
          __$$InvoiceActionSuccessImplCopyWithImpl<_$InvoiceActionSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return actionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return actionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class InvoiceActionSuccess implements InvoiceState {
  const factory InvoiceActionSuccess(final String message) =
      _$InvoiceActionSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvoiceActionSuccessImplCopyWith<_$InvoiceActionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceActionErrorImplCopyWith<$Res> {
  factory _$$InvoiceActionErrorImplCopyWith(_$InvoiceActionErrorImpl value,
          $Res Function(_$InvoiceActionErrorImpl) then) =
      __$$InvoiceActionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvoiceActionErrorImplCopyWithImpl<$Res>
    extends _$InvoiceStateCopyWithImpl<$Res, _$InvoiceActionErrorImpl>
    implements _$$InvoiceActionErrorImplCopyWith<$Res> {
  __$$InvoiceActionErrorImplCopyWithImpl(_$InvoiceActionErrorImpl _value,
      $Res Function(_$InvoiceActionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvoiceActionErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceActionErrorImpl implements InvoiceActionError {
  const _$InvoiceActionErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'InvoiceState.actionError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceActionErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceActionErrorImplCopyWith<_$InvoiceActionErrorImpl> get copyWith =>
      __$$InvoiceActionErrorImplCopyWithImpl<_$InvoiceActionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() listLoading,
    required TResult Function(List<InvoiceEntity> invoices) listLoaded,
    required TResult Function(String message) listError,
    required TResult Function() detailLoading,
    required TResult Function(InvoiceEntity invoice) detailLoaded,
    required TResult Function(String message) detailError,
    required TResult Function() actionLoading,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) actionError,
  }) {
    return actionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? listLoading,
    TResult? Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult? Function(String message)? listError,
    TResult? Function()? detailLoading,
    TResult? Function(InvoiceEntity invoice)? detailLoaded,
    TResult? Function(String message)? detailError,
    TResult? Function()? actionLoading,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? actionError,
  }) {
    return actionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? listLoading,
    TResult Function(List<InvoiceEntity> invoices)? listLoaded,
    TResult Function(String message)? listError,
    TResult Function()? detailLoading,
    TResult Function(InvoiceEntity invoice)? detailLoaded,
    TResult Function(String message)? detailError,
    TResult Function()? actionLoading,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? actionError,
    required TResult orElse(),
  }) {
    if (actionError != null) {
      return actionError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceInitial value) initial,
    required TResult Function(InvoiceListLoading value) listLoading,
    required TResult Function(InvoiceListLoaded value) listLoaded,
    required TResult Function(InvoiceListError value) listError,
    required TResult Function(InvoiceDetailLoading value) detailLoading,
    required TResult Function(InvoiceDetailLoaded value) detailLoaded,
    required TResult Function(InvoiceDetailError value) detailError,
    required TResult Function(InvoiceActionLoading value) actionLoading,
    required TResult Function(InvoiceActionSuccess value) actionSuccess,
    required TResult Function(InvoiceActionError value) actionError,
  }) {
    return actionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceInitial value)? initial,
    TResult? Function(InvoiceListLoading value)? listLoading,
    TResult? Function(InvoiceListLoaded value)? listLoaded,
    TResult? Function(InvoiceListError value)? listError,
    TResult? Function(InvoiceDetailLoading value)? detailLoading,
    TResult? Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult? Function(InvoiceDetailError value)? detailError,
    TResult? Function(InvoiceActionLoading value)? actionLoading,
    TResult? Function(InvoiceActionSuccess value)? actionSuccess,
    TResult? Function(InvoiceActionError value)? actionError,
  }) {
    return actionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceInitial value)? initial,
    TResult Function(InvoiceListLoading value)? listLoading,
    TResult Function(InvoiceListLoaded value)? listLoaded,
    TResult Function(InvoiceListError value)? listError,
    TResult Function(InvoiceDetailLoading value)? detailLoading,
    TResult Function(InvoiceDetailLoaded value)? detailLoaded,
    TResult Function(InvoiceDetailError value)? detailError,
    TResult Function(InvoiceActionLoading value)? actionLoading,
    TResult Function(InvoiceActionSuccess value)? actionSuccess,
    TResult Function(InvoiceActionError value)? actionError,
    required TResult orElse(),
  }) {
    if (actionError != null) {
      return actionError(this);
    }
    return orElse();
  }
}

abstract class InvoiceActionError implements InvoiceState {
  const factory InvoiceActionError(final String message) =
      _$InvoiceActionErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvoiceActionErrorImplCopyWith<_$InvoiceActionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
