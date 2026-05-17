import 'package:equatable/equatable.dart';

class TimeRevenueEntity extends Equatable {
  final String label;
  final double revenue;

  const TimeRevenueEntity({required this.label, required this.revenue});

  @override
  List<Object?> get props => [label, revenue];
}
