import 'package:dio/dio.dart';

import '../../../../core/network/api_error_handling.dart';
import '../models/dashboard_overview_model.dart';
import '../models/time_revenue_model.dart';
import 'analytics_remote_datasource.dart';

class AnalyticsRemoteDatasourceImpl implements AnalyticsRemoteDatasource {
  final Dio _dio;

  AnalyticsRemoteDatasourceImpl(this._dio);

  @override
  Future<DashboardOverviewModel> getOverview() async {
    try {
      final response = await _dio.get('/api/v1/analytics/overview');
      return DashboardOverviewModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<List<TimeRevenueModel>> getRevenue({
    required String type,
    int? year,
    int? month,
  }) async {
    try {
      final response = await _dio.get(
        '/api/v1/analytics/revenue',
        queryParameters: {
          'type': type,
          if (year != null) 'year': year,
          if (month != null) 'month': month,
        },
      );
      final list = response.data as List<dynamic>;
      return list
          .map((e) => TimeRevenueModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
