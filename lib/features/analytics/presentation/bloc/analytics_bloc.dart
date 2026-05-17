import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/dashboard_overview_entity.dart';
import '../../domain/entities/time_revenue_entity.dart';
import '../../domain/usecases/get_overview_usecase.dart';
import '../../domain/usecases/get_revenue_usecase.dart';

part 'analytics_bloc.freezed.dart';
part 'analytics_event.dart';
part 'analytics_state.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  final GetOverviewUseCase _getOverview;
  final GetRevenueUseCase _getRevenue;

  AnalyticsBloc({
    required GetOverviewUseCase getOverview,
    required GetRevenueUseCase getRevenue,
  }) : _getOverview = getOverview,
       _getRevenue = getRevenue,
       super(const AnalyticsState.initial()) {
    on<_GetOverview>(_onGetOverview);
    on<_GetRevenue>(_onGetRevenue);
  }

  DashboardOverviewEntity? _cachedOverview;
  List<TimeRevenueEntity> _cachedRevenue = [];

  Future<void> _onGetOverview(
    _GetOverview event,
    Emitter<AnalyticsState> emit,
  ) async {
    emit(const AnalyticsState.loading());

    final result = await _getOverview(const NoParams());

    result.fold((failure) => emit(AnalyticsState.error(failure.message)), (
      overview,
    ) {
      _cachedOverview = overview;
      emit(AnalyticsState.loaded(overview: overview, revenue: _cachedRevenue));
    });
  }

  Future<void> _onGetRevenue(
    _GetRevenue event,
    Emitter<AnalyticsState> emit,
  ) async {
    emit(const AnalyticsState.loading());

    final result = await _getRevenue(
      GetRevenueParams(type: event.type, year: event.year, month: event.month),
    );

    result.fold((failure) => emit(AnalyticsState.error(failure.message)), (
      revenue,
    ) {
      _cachedRevenue = revenue;
      emit(
        AnalyticsState.loaded(
          overview:
              _cachedOverview ??
              const DashboardOverviewEntity(
                totalInvoices: 0,
                paidInvoices: 0,
                unpaidInvoices: 0,
                revenueThisMonth: 0,
              ),
          revenue: revenue,
        ),
      );
    });
  }
}
