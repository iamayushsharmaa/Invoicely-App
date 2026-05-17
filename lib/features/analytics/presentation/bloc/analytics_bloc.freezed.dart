// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalyticsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOverview,
    required TResult Function(String type, int? year, int? month) getRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOverview,
    TResult? Function(String type, int? year, int? month)? getRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOverview,
    TResult Function(String type, int? year, int? month)? getRevenue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOverview value) getOverview,
    required TResult Function(_GetRevenue value) getRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOverview value)? getOverview,
    TResult? Function(_GetRevenue value)? getRevenue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOverview value)? getOverview,
    TResult Function(_GetRevenue value)? getRevenue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsEventCopyWith<$Res> {
  factory $AnalyticsEventCopyWith(
          AnalyticsEvent value, $Res Function(AnalyticsEvent) then) =
      _$AnalyticsEventCopyWithImpl<$Res, AnalyticsEvent>;
}

/// @nodoc
class _$AnalyticsEventCopyWithImpl<$Res, $Val extends AnalyticsEvent>
    implements $AnalyticsEventCopyWith<$Res> {
  _$AnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOverviewImplCopyWith<$Res> {
  factory _$$GetOverviewImplCopyWith(
          _$GetOverviewImpl value, $Res Function(_$GetOverviewImpl) then) =
      __$$GetOverviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOverviewImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$GetOverviewImpl>
    implements _$$GetOverviewImplCopyWith<$Res> {
  __$$GetOverviewImplCopyWithImpl(
      _$GetOverviewImpl _value, $Res Function(_$GetOverviewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOverviewImpl implements _GetOverview {
  const _$GetOverviewImpl();

  @override
  String toString() {
    return 'AnalyticsEvent.getOverview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOverviewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOverview,
    required TResult Function(String type, int? year, int? month) getRevenue,
  }) {
    return getOverview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOverview,
    TResult? Function(String type, int? year, int? month)? getRevenue,
  }) {
    return getOverview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOverview,
    TResult Function(String type, int? year, int? month)? getRevenue,
    required TResult orElse(),
  }) {
    if (getOverview != null) {
      return getOverview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOverview value) getOverview,
    required TResult Function(_GetRevenue value) getRevenue,
  }) {
    return getOverview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOverview value)? getOverview,
    TResult? Function(_GetRevenue value)? getRevenue,
  }) {
    return getOverview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOverview value)? getOverview,
    TResult Function(_GetRevenue value)? getRevenue,
    required TResult orElse(),
  }) {
    if (getOverview != null) {
      return getOverview(this);
    }
    return orElse();
  }
}

abstract class _GetOverview implements AnalyticsEvent {
  const factory _GetOverview() = _$GetOverviewImpl;
}

/// @nodoc
abstract class _$$GetRevenueImplCopyWith<$Res> {
  factory _$$GetRevenueImplCopyWith(
          _$GetRevenueImpl value, $Res Function(_$GetRevenueImpl) then) =
      __$$GetRevenueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, int? year, int? month});
}

/// @nodoc
class __$$GetRevenueImplCopyWithImpl<$Res>
    extends _$AnalyticsEventCopyWithImpl<$Res, _$GetRevenueImpl>
    implements _$$GetRevenueImplCopyWith<$Res> {
  __$$GetRevenueImplCopyWithImpl(
      _$GetRevenueImpl _value, $Res Function(_$GetRevenueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? year = freezed,
    Object? month = freezed,
  }) {
    return _then(_$GetRevenueImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetRevenueImpl implements _GetRevenue {
  const _$GetRevenueImpl({required this.type, this.year, this.month});

  @override
  final String type;
  @override
  final int? year;
  @override
  final int? month;

  @override
  String toString() {
    return 'AnalyticsEvent.getRevenue(type: $type, year: $year, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRevenueImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, year, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRevenueImplCopyWith<_$GetRevenueImpl> get copyWith =>
      __$$GetRevenueImplCopyWithImpl<_$GetRevenueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOverview,
    required TResult Function(String type, int? year, int? month) getRevenue,
  }) {
    return getRevenue(type, year, month);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOverview,
    TResult? Function(String type, int? year, int? month)? getRevenue,
  }) {
    return getRevenue?.call(type, year, month);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOverview,
    TResult Function(String type, int? year, int? month)? getRevenue,
    required TResult orElse(),
  }) {
    if (getRevenue != null) {
      return getRevenue(type, year, month);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOverview value) getOverview,
    required TResult Function(_GetRevenue value) getRevenue,
  }) {
    return getRevenue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOverview value)? getOverview,
    TResult? Function(_GetRevenue value)? getRevenue,
  }) {
    return getRevenue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOverview value)? getOverview,
    TResult Function(_GetRevenue value)? getRevenue,
    required TResult orElse(),
  }) {
    if (getRevenue != null) {
      return getRevenue(this);
    }
    return orElse();
  }
}

abstract class _GetRevenue implements AnalyticsEvent {
  const factory _GetRevenue(
      {required final String type,
      final int? year,
      final int? month}) = _$GetRevenueImpl;

  String get type;
  int? get year;
  int? get month;
  @JsonKey(ignore: true)
  _$$GetRevenueImplCopyWith<_$GetRevenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnalyticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res, AnalyticsState>;
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res, $Val extends AnalyticsState>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

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
    extends _$AnalyticsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AnalyticsState.initial()';
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
    required TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AnalyticsState {
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
    extends _$AnalyticsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AnalyticsState.loading()';
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
    required TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AnalyticsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? revenue = null,
  }) {
    return _then(_$LoadedImpl(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as DashboardOverviewEntity,
      revenue: null == revenue
          ? _value._revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<TimeRevenueEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.overview, required final List<TimeRevenueEntity> revenue})
      : _revenue = revenue;

  @override
  final DashboardOverviewEntity overview;
  final List<TimeRevenueEntity> _revenue;
  @override
  List<TimeRevenueEntity> get revenue {
    if (_revenue is EqualUnmodifiableListView) return _revenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revenue);
  }

  @override
  String toString() {
    return 'AnalyticsState.loaded(overview: $overview, revenue: $revenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._revenue, _revenue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, overview, const DeepCollectionEquality().hash(_revenue));

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
    required TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(overview, revenue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(overview, revenue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(overview, revenue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AnalyticsState {
  const factory _Loaded(
      {required final DashboardOverviewEntity overview,
      required final List<TimeRevenueEntity> revenue}) = _$LoadedImpl;

  DashboardOverviewEntity get overview;
  List<TimeRevenueEntity> get revenue;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$AnalyticsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AnalyticsState.error(message: $message)';
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
    required TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DashboardOverviewEntity overview, List<TimeRevenueEntity> revenue)?
        loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AnalyticsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
