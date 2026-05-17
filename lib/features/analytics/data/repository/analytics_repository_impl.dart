import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/network/api_exceptions.dart';
import '../../domain/entities/dashboard_overview_entity.dart';
import '../../domain/entities/time_revenue_entity.dart';
import '../../domain/repository/analytics_repository.dart';
import '../remote/analytics_remote_datasource.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  final AnalyticsRemoteDatasource _remote;

  AnalyticsRepositoryImpl({required AnalyticsRemoteDatasource remote})
    : _remote = remote;

  @override
  Future<Either<Failure, DashboardOverviewEntity>> getOverview() async {
    try {
      final result = await _remote.getOverview();
      return Right(result.toEntity());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to load overview'));
    }
  }

  @override
  Future<Either<Failure, List<TimeRevenueEntity>>> getRevenue({
    required String type,
    int? year,
    int? month,
  }) async {
    try {
      final result = await _remote.getRevenue(
        type: type,
        year: year,
        month: month,
      );
      return Right(result.map((e) => e.toEntity()).toList());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to load revenue data'));
    }
  }
}