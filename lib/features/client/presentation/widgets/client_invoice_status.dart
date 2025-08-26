import 'package:flutter/material.dart';

class ClientInvoiceStatus extends StatelessWidget {
  const ClientInvoiceStatus({super.key});

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
          _buildStatusItem('12', 'Total\nInvoices'),
          _divider(),
          _buildStatusItem('\$1200', 'Billed'),
          _divider(),
          _buildStatusItem('\$1000', 'Paid'),
          _divider(),
          _buildStatusItem('\$200', 'Overdue'),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(width: 1, height: 50, color: Colors.grey.shade700);
  }

  Widget _buildStatusItem(String value, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20, // Reduced from 26
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14, // Reduced from 16
            color: Colors.grey.shade300,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
