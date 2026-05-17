// lib/features/analytics/domain/entities/dashboard_overview_entity.dart
import 'package:equatable/equatable.dart';

class DashboardOverviewEntity extends Equatable {
  final int totalInvoices;
  final int paidInvoices;
  final int unpaidInvoices;
  final double revenueThisMonth;
  final DateTime? lastInvoiceDate;
  final DateTime? nextDueDate;

  const DashboardOverviewEntity({
    required this.totalInvoices,
    required this.paidInvoices,
    required this.unpaidInvoices,
    required this.revenueThisMonth,
    this.lastInvoiceDate,
    this.nextDueDate,
  });

  @override
  List<Object?> get props => [
    totalInvoices,
    paidInvoices,
    unpaidInvoices,
    revenueThisMonth,
    lastInvoiceDate,
    nextDueDate,
  ];
}
