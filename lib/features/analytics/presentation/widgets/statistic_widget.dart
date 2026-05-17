import 'package:flutter/material.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../domain/entities/dashboard_overview_entity.dart';

class StatisticWidget extends StatelessWidget {
  final DashboardOverviewEntity overview;

  const StatisticWidget({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final monthName = DateFormatter.monthName(now.month);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF3F51B5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 18),
          Text(
            '$monthName\nInvoicely Summary',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _statItem('Total', overview.totalInvoices.toString()),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                _statItem(
                  'Paid',
                  '\$${overview.revenueThisMonth.toStringAsFixed(0)}',
                ),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                _statItem('Unpaid', overview.unpaidInvoices.toString()),
              ],
            ),
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }

  Widget _statItem(String title, String value) {
    return SizedBox(
      height: 70,
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
