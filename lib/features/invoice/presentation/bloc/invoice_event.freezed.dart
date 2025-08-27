// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_event.dart';

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
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
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

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return loadInvoices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return loadInvoices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
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
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return loadInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return loadInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
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
abstract class _$$GetInvoiceByIdImplCopyWith<$Res> {
  factory _$$GetInvoiceByIdImplCopyWith(_$GetInvoiceByIdImpl value,
          $Res Function(_$GetInvoiceByIdImpl) then) =
      __$$GetInvoiceByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetInvoiceByIdImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$GetInvoiceByIdImpl>
    implements _$$GetInvoiceByIdImplCopyWith<$Res> {
  __$$GetInvoiceByIdImplCopyWithImpl(
      _$GetInvoiceByIdImpl _value, $Res Function(_$GetInvoiceByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetInvoiceByIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoiceByIdImpl implements GetInvoiceById {
  const _$GetInvoiceByIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'InvoiceEvent.getInvoiceById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceByIdImplCopyWith<_$GetInvoiceByIdImpl> get copyWith =>
      __$$GetInvoiceByIdImplCopyWithImpl<_$GetInvoiceByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return getInvoiceById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return getInvoiceById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (getInvoiceById != null) {
      return getInvoiceById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return getInvoiceById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return getInvoiceById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (getInvoiceById != null) {
      return getInvoiceById(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceById implements InvoiceEvent {
  const factory GetInvoiceById(final String id) = _$GetInvoiceByIdImpl;

  String get id;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInvoiceByIdImplCopyWith<_$GetInvoiceByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateInvoiceImplCopyWith<$Res> {
  factory _$$CreateInvoiceImplCopyWith(
          _$CreateInvoiceImpl value, $Res Function(_$CreateInvoiceImpl) then) =
      __$$CreateInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InvoiceRequestEntity request});
}

/// @nodoc
class __$$CreateInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$CreateInvoiceImpl>
    implements _$$CreateInvoiceImplCopyWith<$Res> {
  __$$CreateInvoiceImplCopyWithImpl(
      _$CreateInvoiceImpl _value, $Res Function(_$CreateInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$CreateInvoiceImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as InvoiceRequestEntity,
    ));
  }
}

/// @nodoc

class _$CreateInvoiceImpl implements CreateInvoice {
  const _$CreateInvoiceImpl(this.request);

  @override
  final InvoiceRequestEntity request;

  @override
  String toString() {
    return 'InvoiceEvent.createInvoice(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvoiceImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvoiceImplCopyWith<_$CreateInvoiceImpl> get copyWith =>
      __$$CreateInvoiceImplCopyWithImpl<_$CreateInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return createInvoice(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return createInvoice?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (createInvoice != null) {
      return createInvoice(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return createInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return createInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (createInvoice != null) {
      return createInvoice(this);
    }
    return orElse();
  }
}

abstract class CreateInvoice implements InvoiceEvent {
  const factory CreateInvoice(final InvoiceRequestEntity request) =
      _$CreateInvoiceImpl;

  InvoiceRequestEntity get request;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateInvoiceImplCopyWith<_$CreateInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInvoiceImplCopyWith<$Res> {
  factory _$$UpdateInvoiceImplCopyWith(
          _$UpdateInvoiceImpl value, $Res Function(_$UpdateInvoiceImpl) then) =
      __$$UpdateInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, InvoiceRequestEntity request});
}

/// @nodoc
class __$$UpdateInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$UpdateInvoiceImpl>
    implements _$$UpdateInvoiceImplCopyWith<$Res> {
  __$$UpdateInvoiceImplCopyWithImpl(
      _$UpdateInvoiceImpl _value, $Res Function(_$UpdateInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? request = null,
  }) {
    return _then(_$UpdateInvoiceImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as InvoiceRequestEntity,
    ));
  }
}

/// @nodoc

class _$UpdateInvoiceImpl implements UpdateInvoice {
  const _$UpdateInvoiceImpl(this.id, this.request);

  @override
  final String id;
  @override
  final InvoiceRequestEntity request;

  @override
  String toString() {
    return 'InvoiceEvent.updateInvoice(id: $id, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, request);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInvoiceImplCopyWith<_$UpdateInvoiceImpl> get copyWith =>
      __$$UpdateInvoiceImplCopyWithImpl<_$UpdateInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return updateInvoice(id, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return updateInvoice?.call(id, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (updateInvoice != null) {
      return updateInvoice(id, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return updateInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return updateInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (updateInvoice != null) {
      return updateInvoice(this);
    }
    return orElse();
  }
}

abstract class UpdateInvoice implements InvoiceEvent {
  const factory UpdateInvoice(
          final String id, final InvoiceRequestEntity request) =
      _$UpdateInvoiceImpl;

  String get id;
  InvoiceRequestEntity get request;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInvoiceImplCopyWith<_$UpdateInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkPaidInvoiceImplCopyWith<$Res> {
  factory _$$MarkPaidInvoiceImplCopyWith(_$MarkPaidInvoiceImpl value,
          $Res Function(_$MarkPaidInvoiceImpl) then) =
      __$$MarkPaidInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, InvoiceRequestEntity request});
}

/// @nodoc
class __$$MarkPaidInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$MarkPaidInvoiceImpl>
    implements _$$MarkPaidInvoiceImplCopyWith<$Res> {
  __$$MarkPaidInvoiceImplCopyWithImpl(
      _$MarkPaidInvoiceImpl _value, $Res Function(_$MarkPaidInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? request = null,
  }) {
    return _then(_$MarkPaidInvoiceImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as InvoiceRequestEntity,
    ));
  }
}

/// @nodoc

class _$MarkPaidInvoiceImpl implements MarkPaidInvoice {
  const _$MarkPaidInvoiceImpl(this.id, this.request);

  @override
  final String id;
  @override
  final InvoiceRequestEntity request;

  @override
  String toString() {
    return 'InvoiceEvent.markPaidInvoice(id: $id, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkPaidInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, request);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkPaidInvoiceImplCopyWith<_$MarkPaidInvoiceImpl> get copyWith =>
      __$$MarkPaidInvoiceImplCopyWithImpl<_$MarkPaidInvoiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return markPaidInvoice(id, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return markPaidInvoice?.call(id, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (markPaidInvoice != null) {
      return markPaidInvoice(id, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return markPaidInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return markPaidInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (markPaidInvoice != null) {
      return markPaidInvoice(this);
    }
    return orElse();
  }
}

abstract class MarkPaidInvoice implements InvoiceEvent {
  const factory MarkPaidInvoice(
          final String id, final InvoiceRequestEntity request) =
      _$MarkPaidInvoiceImpl;

  String get id;
  InvoiceRequestEntity get request;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkPaidInvoiceImplCopyWith<_$MarkPaidInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteInvoiceImplCopyWith<$Res> {
  factory _$$DeleteInvoiceImplCopyWith(
          _$DeleteInvoiceImpl value, $Res Function(_$DeleteInvoiceImpl) then) =
      __$$DeleteInvoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteInvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$DeleteInvoiceImpl>
    implements _$$DeleteInvoiceImplCopyWith<$Res> {
  __$$DeleteInvoiceImplCopyWithImpl(
      _$DeleteInvoiceImpl _value, $Res Function(_$DeleteInvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteInvoiceImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteInvoiceImpl implements DeleteInvoice {
  const _$DeleteInvoiceImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'InvoiceEvent.deleteInvoice(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteInvoiceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteInvoiceImplCopyWith<_$DeleteInvoiceImpl> get copyWith =>
      __$$DeleteInvoiceImplCopyWithImpl<_$DeleteInvoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return deleteInvoice(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return deleteInvoice?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (deleteInvoice != null) {
      return deleteInvoice(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return deleteInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return deleteInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (deleteInvoice != null) {
      return deleteInvoice(this);
    }
    return orElse();
  }
}

abstract class DeleteInvoice implements InvoiceEvent {
  const factory DeleteInvoice(final String id) = _$DeleteInvoiceImpl;

  String get id;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteInvoiceImplCopyWith<_$DeleteInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchInvoicesImplCopyWith<$Res> {
  factory _$$SearchInvoicesImplCopyWith(_$SearchInvoicesImpl value,
          $Res Function(_$SearchInvoicesImpl) then) =
      __$$SearchInvoicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? invoiceNumber,
      String? clientName,
      DateTime? fromDate,
      DateTime? toDate});
}

/// @nodoc
class __$$SearchInvoicesImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$SearchInvoicesImpl>
    implements _$$SearchInvoicesImplCopyWith<$Res> {
  __$$SearchInvoicesImplCopyWithImpl(
      _$SearchInvoicesImpl _value, $Res Function(_$SearchInvoicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceNumber = freezed,
    Object? clientName = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$SearchInvoicesImpl(
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SearchInvoicesImpl implements SearchInvoices {
  const _$SearchInvoicesImpl(
      {this.invoiceNumber, this.clientName, this.fromDate, this.toDate});

  @override
  final String? invoiceNumber;
  @override
  final String? clientName;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'InvoiceEvent.searchInvoices(invoiceNumber: $invoiceNumber, clientName: $clientName, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInvoicesImpl &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, invoiceNumber, clientName, fromDate, toDate);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInvoicesImplCopyWith<_$SearchInvoicesImpl> get copyWith =>
      __$$SearchInvoicesImplCopyWithImpl<_$SearchInvoicesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return searchInvoices(invoiceNumber, clientName, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return searchInvoices?.call(invoiceNumber, clientName, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (searchInvoices != null) {
      return searchInvoices(invoiceNumber, clientName, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return searchInvoices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return searchInvoices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (searchInvoices != null) {
      return searchInvoices(this);
    }
    return orElse();
  }
}

abstract class SearchInvoices implements InvoiceEvent {
  const factory SearchInvoices(
      {final String? invoiceNumber,
      final String? clientName,
      final DateTime? fromDate,
      final DateTime? toDate}) = _$SearchInvoicesImpl;

  String? get invoiceNumber;
  String? get clientName;
  DateTime? get fromDate;
  DateTime? get toDate;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchInvoicesImplCopyWith<_$SearchInvoicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendInvoiceEmailImplCopyWith<$Res> {
  factory _$$SendInvoiceEmailImplCopyWith(_$SendInvoiceEmailImpl value,
          $Res Function(_$SendInvoiceEmailImpl) then) =
      __$$SendInvoiceEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceId});
}

/// @nodoc
class __$$SendInvoiceEmailImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$SendInvoiceEmailImpl>
    implements _$$SendInvoiceEmailImplCopyWith<$Res> {
  __$$SendInvoiceEmailImplCopyWithImpl(_$SendInvoiceEmailImpl _value,
      $Res Function(_$SendInvoiceEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
  }) {
    return _then(_$SendInvoiceEmailImpl(
      null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendInvoiceEmailImpl implements SendInvoiceEmail {
  const _$SendInvoiceEmailImpl(this.invoiceId);

  @override
  final String invoiceId;

  @override
  String toString() {
    return 'InvoiceEvent.sendInvoiceEmail(invoiceId: $invoiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendInvoiceEmailImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendInvoiceEmailImplCopyWith<_$SendInvoiceEmailImpl> get copyWith =>
      __$$SendInvoiceEmailImplCopyWithImpl<_$SendInvoiceEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return sendInvoiceEmail(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return sendInvoiceEmail?.call(invoiceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (sendInvoiceEmail != null) {
      return sendInvoiceEmail(invoiceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return sendInvoiceEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return sendInvoiceEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (sendInvoiceEmail != null) {
      return sendInvoiceEmail(this);
    }
    return orElse();
  }
}

abstract class SendInvoiceEmail implements InvoiceEvent {
  const factory SendInvoiceEmail(final String invoiceId) =
      _$SendInvoiceEmailImpl;

  String get invoiceId;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendInvoiceEmailImplCopyWith<_$SendInvoiceEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadInvoicePdfImplCopyWith<$Res> {
  factory _$$DownloadInvoicePdfImplCopyWith(_$DownloadInvoicePdfImpl value,
          $Res Function(_$DownloadInvoicePdfImpl) then) =
      __$$DownloadInvoicePdfImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceId, String template});
}

/// @nodoc
class __$$DownloadInvoicePdfImplCopyWithImpl<$Res>
    extends _$InvoiceEventCopyWithImpl<$Res, _$DownloadInvoicePdfImpl>
    implements _$$DownloadInvoicePdfImplCopyWith<$Res> {
  __$$DownloadInvoicePdfImplCopyWithImpl(_$DownloadInvoicePdfImpl _value,
      $Res Function(_$DownloadInvoicePdfImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? template = null,
  }) {
    return _then(_$DownloadInvoicePdfImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadInvoicePdfImpl implements DownloadInvoicePdf {
  const _$DownloadInvoicePdfImpl(
      {required this.invoiceId, this.template = 'default'});

  @override
  final String invoiceId;
  @override
  @JsonKey()
  final String template;

  @override
  String toString() {
    return 'InvoiceEvent.downloadInvoicePdf(invoiceId: $invoiceId, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadInvoicePdfImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceId, template);

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadInvoicePdfImplCopyWith<_$DownloadInvoicePdfImpl> get copyWith =>
      __$$DownloadInvoicePdfImplCopyWithImpl<_$DownloadInvoicePdfImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInvoices,
    required TResult Function(String id) getInvoiceById,
    required TResult Function(InvoiceRequestEntity request) createInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        updateInvoice,
    required TResult Function(String id, InvoiceRequestEntity request)
        markPaidInvoice,
    required TResult Function(String id) deleteInvoice,
    required TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)
        searchInvoices,
    required TResult Function(String invoiceId) sendInvoiceEmail,
    required TResult Function(String invoiceId, String template)
        downloadInvoicePdf,
  }) {
    return downloadInvoicePdf(invoiceId, template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInvoices,
    TResult? Function(String id)? getInvoiceById,
    TResult? Function(InvoiceRequestEntity request)? createInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult? Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult? Function(String id)? deleteInvoice,
    TResult? Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult? Function(String invoiceId)? sendInvoiceEmail,
    TResult? Function(String invoiceId, String template)? downloadInvoicePdf,
  }) {
    return downloadInvoicePdf?.call(invoiceId, template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInvoices,
    TResult Function(String id)? getInvoiceById,
    TResult Function(InvoiceRequestEntity request)? createInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? updateInvoice,
    TResult Function(String id, InvoiceRequestEntity request)? markPaidInvoice,
    TResult Function(String id)? deleteInvoice,
    TResult Function(String? invoiceNumber, String? clientName,
            DateTime? fromDate, DateTime? toDate)?
        searchInvoices,
    TResult Function(String invoiceId)? sendInvoiceEmail,
    TResult Function(String invoiceId, String template)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (downloadInvoicePdf != null) {
      return downloadInvoicePdf(invoiceId, template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInvoices value) loadInvoices,
    required TResult Function(GetInvoiceById value) getInvoiceById,
    required TResult Function(CreateInvoice value) createInvoice,
    required TResult Function(UpdateInvoice value) updateInvoice,
    required TResult Function(MarkPaidInvoice value) markPaidInvoice,
    required TResult Function(DeleteInvoice value) deleteInvoice,
    required TResult Function(SearchInvoices value) searchInvoices,
    required TResult Function(SendInvoiceEmail value) sendInvoiceEmail,
    required TResult Function(DownloadInvoicePdf value) downloadInvoicePdf,
  }) {
    return downloadInvoicePdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInvoices value)? loadInvoices,
    TResult? Function(GetInvoiceById value)? getInvoiceById,
    TResult? Function(CreateInvoice value)? createInvoice,
    TResult? Function(UpdateInvoice value)? updateInvoice,
    TResult? Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult? Function(DeleteInvoice value)? deleteInvoice,
    TResult? Function(SearchInvoices value)? searchInvoices,
    TResult? Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult? Function(DownloadInvoicePdf value)? downloadInvoicePdf,
  }) {
    return downloadInvoicePdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInvoices value)? loadInvoices,
    TResult Function(GetInvoiceById value)? getInvoiceById,
    TResult Function(CreateInvoice value)? createInvoice,
    TResult Function(UpdateInvoice value)? updateInvoice,
    TResult Function(MarkPaidInvoice value)? markPaidInvoice,
    TResult Function(DeleteInvoice value)? deleteInvoice,
    TResult Function(SearchInvoices value)? searchInvoices,
    TResult Function(SendInvoiceEmail value)? sendInvoiceEmail,
    TResult Function(DownloadInvoicePdf value)? downloadInvoicePdf,
    required TResult orElse(),
  }) {
    if (downloadInvoicePdf != null) {
      return downloadInvoicePdf(this);
    }
    return orElse();
  }
}

abstract class DownloadInvoicePdf implements InvoiceEvent {
  const factory DownloadInvoicePdf(
      {required final String invoiceId,
      final String template}) = _$DownloadInvoicePdfImpl;

  String get invoiceId;
  String get template;

  /// Create a copy of InvoiceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadInvoicePdfImplCopyWith<_$DownloadInvoicePdfImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
