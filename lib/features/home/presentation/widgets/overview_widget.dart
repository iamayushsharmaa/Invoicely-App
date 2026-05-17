import 'package:flutter/material.dart';

import '../../../invoice/domain/entities/invoice_enitity.dart';

class OverviewCard extends StatelessWidget {
  final List<InvoiceEntity> invoices;

  const OverviewCard({super.key, required this.invoices});

  double get _totalEarnings =>
      invoices.fold(0, (sum, i) => sum + i.totalAmount);

  double get _paidThisMonth {
    final now = DateTime.now();
    return invoices
        .where(
          (i) =>
              i.status.toUpperCase() == 'PAID' &&
              i.invoiceDate.month == now.month &&
              i.invoiceDate.year == now.year,
        )
        .fold(0, (sum, i) => sum + i.totalAmount);
  }

  double get _awaitingPayment => invoices
      .where((i) => i.status.toUpperCase() == 'UNPAID')
      .fold(0, (sum, i) => sum + i.totalAmount);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF3F51B5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Total Earnings',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 6),
            Text(
              '\$${_totalEarnings.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _paidByMonth(
                  'Paid this month',
                  '\$${_paidThisMonth.toStringAsFixed(2)}',
                ),
                _paidByMonth(
                  'Awaiting payment',
                  '\$${_awaitingPayment.toStringAsFixed(2)}',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _paidByMonth(String title, String amount) {
    return Container(
      height: 70,
      width: 125,
      decoration: BoxDecoration(
        color: const Color(0xC53F51B5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              amount,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
