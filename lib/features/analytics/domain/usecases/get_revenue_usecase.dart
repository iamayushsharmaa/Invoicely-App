import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/time_revenue_entity.dart';
import '../repository/analytics_repository.dart';

class GetRevenueParams {
  final String type;
  final int? year;
  final int? month;

  const GetRevenueParams({required this.type, this.year, this.month});
}

class GetRevenueUseCase
    implements UseCase<List<TimeRevenueEntity>, GetRevenueParams> {
  final AnalyticsRepository _repository;

  const GetRevenueUseCase(this._repository);

  @override
  Future<Either<Failure, List<TimeRevenueEntity>>> call(
    GetRevenueParams params,
  ) async => _repository.getRevenue(
    type: params.type,
    year: params.year,
    month: params.month,
  );
}
