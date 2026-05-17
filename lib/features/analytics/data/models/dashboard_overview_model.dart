import '../../domain/entities/dashboard_overview_entity.dart';

class DashboardOverviewModel {
  final int totalInvoices;
  final int paidInvoices;
  final int unpaidInvoices;
  final double revenueThisMonth;
  final DateTime? lastInvoiceDate;
  final DateTime? nextDueDate;

  const DashboardOverviewModel({
    required this.totalInvoices,
    required this.paidInvoices,
    required this.unpaidInvoices,
    required this.revenueThisMonth,
    this.lastInvoiceDate,
    this.nextDueDate,
  });

  factory DashboardOverviewModel.fromJson(Map<String, dynamic> json) {
    return DashboardOverviewModel(
      totalInvoices: json['totalInvoices'] as int,
      paidInvoices: json['paidInvoices'] as int,
      unpaidInvoices: json['unpaidInvoices'] as int,
      revenueThisMonth: (json['revenueThisMonth'] as num).toDouble(),
      lastInvoiceDate: json['lastInvoiceDate'] != null
          ? DateTime.parse(json['lastInvoiceDate'] as String)
          : null,
      nextDueDate: json['nextDueDate'] != null
          ? DateTime.parse(json['nextDueDate'] as String)
          : null,
    );
  }

  DashboardOverviewEntity toEntity() {
    return DashboardOverviewEntity(
      totalInvoices: totalInvoices,
      paidInvoices: paidInvoices,
      unpaidInvoices: unpaidInvoices,
      revenueThisMonth: revenueThisMonth,
      lastInvoiceDate: lastInvoiceDate,
      nextDueDate: nextDueDate,
    );
  }
}
