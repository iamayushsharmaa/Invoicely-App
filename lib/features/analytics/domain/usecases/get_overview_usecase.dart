import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/dashboard_overview_entity.dart';
import '../repository/analytics_repository.dart';

class GetOverviewUseCase implements UseCase<DashboardOverviewEntity, NoParams> {
  final AnalyticsRepository _repository;

  const GetOverviewUseCase(this._repository);

  @override
  Future<Either<Failure, DashboardOverviewEntity>> call(NoParams params) =>
      _repository.getOverview();
}
