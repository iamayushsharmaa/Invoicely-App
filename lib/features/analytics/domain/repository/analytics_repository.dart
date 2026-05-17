import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../entities/dashboard_overview_entity.dart';
import '../entities/time_revenue_entity.dart';

abstract interface class AnalyticsRepository {
  Future<Either<Failure, DashboardOverviewEntity>> getOverview();

  Future<Either<Failure, List<TimeRevenueEntity>>> getRevenue({
    required String type,
    int? year,
    int? month,
  });
}
