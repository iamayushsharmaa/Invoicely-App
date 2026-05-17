import '../../domain/entities/time_revenue_entity.dart';

class TimeRevenueModel {
  final String label;
  final double revenue;

  const TimeRevenueModel({required this.label, required this.revenue});

  factory TimeRevenueModel.fromJson(Map<String, dynamic> json) {
    return TimeRevenueModel(
      label: json['label'] as String,
      revenue: (json['revenue'] as num).toDouble(),
    );
  }

  TimeRevenueEntity toEntity() {
    return TimeRevenueEntity(label: label, revenue: revenue);
  }
}
