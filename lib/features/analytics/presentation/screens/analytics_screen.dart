import 'package:flutter/material.dart';
import 'package:invoice/features/analytics/presentation/widgets/graph_widget.dart';
import 'package:invoice/features/analytics/presentation/widgets/statistic_widget.dart';

import '../widgets/top_invoices.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analytics", style: TextStyle(fontSize: 25)),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              "Monthly statistics",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            StatisticWidget(),
            const SizedBox(height: 18),
            GraphWidget(),
            const SizedBox(height: 18),
            TopInvoices(),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
