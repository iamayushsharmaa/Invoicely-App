import '../models/dashboard_overview_model.dart';
import '../models/time_revenue_model.dart';

abstract interface class AnalyticsRemoteDatasource {
  Future<DashboardOverviewModel> getOverview();

  Future<List<TimeRevenueModel>> getRevenue({
    required String type,
    int? year,
    int? month,
  });
}
