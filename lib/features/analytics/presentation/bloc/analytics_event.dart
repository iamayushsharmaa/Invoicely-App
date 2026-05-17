part of 'analytics_bloc.dart';

@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  const factory AnalyticsEvent.getOverview() = _GetOverview;
  const factory AnalyticsEvent.getRevenue({
    required String type,
    int? year,
    int? month,
  }) = _GetRevenue;
}
