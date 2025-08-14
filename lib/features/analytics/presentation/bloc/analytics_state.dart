part of 'analytics_bloc.dart';

sealed class AnalyticsState extends Equatable {
  const AnalyticsState();
}

final class AnalyticsInitial extends AnalyticsState {
  @override
  List<Object> get props => [];
}
