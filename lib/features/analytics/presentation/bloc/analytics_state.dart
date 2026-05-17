part of 'analytics_bloc.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState.initial() = _Initial;

  const factory AnalyticsState.loading() = _Loading;

  const factory AnalyticsState.loaded({
    required DashboardOverviewEntity overview,
    required List<TimeRevenueEntity> revenue,
  }) = _Loaded;

  const factory AnalyticsState.error(String message) = _Error;
}
