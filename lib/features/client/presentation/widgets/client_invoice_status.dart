import 'package:flutter/material.dart';

import '../../../../core/utils/invoice_status_utils.dart';
import '../../../invoice/domain/entities/invoice_enitity.dart';

class ClientInvoiceStatus extends StatelessWidget {
  final List<InvoiceEntity> invoices;

  const ClientInvoiceStatus({super.key, required this.invoices});

  int get _totalInvoices => invoices.length;

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
          _buildStatusItem(
            '\$${InvoiceStatusUtils.totalBilled(invoices).toStringAsFixed(0)}',
            'Billed',
          ),
          _divider(),

          _buildStatusItem(
            '\$${InvoiceStatusUtils.totalByStatus(invoices, 'PAID').toStringAsFixed(0)}',
            'Paid',
          ),
          _divider(),

          _buildStatusItem(
            '\$${InvoiceStatusUtils.totalByStatus(invoices, 'OVERDUE').toStringAsFixed(0)}',
            'Overdue',
          ),
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
