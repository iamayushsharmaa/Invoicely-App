import 'package:flutter/material.dart';

import '../../../invoice/domain/entities/invoice_enitity.dart';

class ClientInvoiceStatus extends StatelessWidget {
  final List<InvoiceEntity> invoices;

  const ClientInvoiceStatus({super.key, required this.invoices});

  int get _totalInvoices => invoices.length;

  double get _totalBilled => invoices.fold(0, (sum, i) => sum + i.totalAmount);

  double get _totalPaid => invoices
      .where((i) => i.status.toUpperCase() == 'PAID')
      .fold(0, (sum, i) => sum + i.totalAmount);

  double get _totalOverdue => invoices
      .where((i) => i.status.toUpperCase() == 'OVERDUE')
      .fold(0, (sum, i) => sum + i.totalAmount);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatusItem(_totalInvoices.toString(), 'Total\nInvoices'),
          _divider(),
          _buildStatusItem('\$${_totalBilled.toStringAsFixed(0)}', 'Billed'),
          _divider(),
          _buildStatusItem('\$${_totalPaid.toStringAsFixed(0)}', 'Paid'),
          _divider(),
          _buildStatusItem('\$${_totalOverdue.toStringAsFixed(0)}', 'Overdue'),
        ],
      ),
    );
  }

  Widget _divider() =>
      Container(width: 1, height: 50, color: Colors.grey.shade700);

  Widget _buildStatusItem(String value, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade300,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
