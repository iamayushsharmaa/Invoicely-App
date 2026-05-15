import 'package:flutter/material.dart';

import '../../domain/entities/invoice_enitity.dart';

class MainInvoiceCard extends StatelessWidget {
  final InvoiceEntity invoice;

  const MainInvoiceCard({super.key, required this.invoice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade300,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.receipt),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        invoice.billingTo,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        invoice.invoiceNumber,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              _StatusBadge(status: invoice.status),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            height: 68,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _textNumberWidget(
                  'Amount',
                  '${invoice.currency} ${invoice.totalAmount.toStringAsFixed(2)}',
                ),
                _textNumberWidget('No.', '#${invoice.invoiceNumber}'),
                _textNumberWidget('Date', _formatDate(invoice.invoiceDate)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textNumberWidget(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}

// private widget — only used by MainInvoiceCard
class _StatusBadge extends StatelessWidget {
  final String status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        _label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }

  Color get _backgroundColor {
    switch (status.toUpperCase()) {
      case 'PAID':
        return Colors.green.shade900;
      case 'UNPAID':
        return Colors.orange.shade900;
      case 'OVERDUE':
        return Colors.red.shade900;
      case 'DRAFT':
        return Colors.grey.shade700;
      default:
        return Colors.grey.shade700;
    }
  }

  String get _label {
    final s = status.toUpperCase();
    return '${s[0]}${s.substring(1).toLowerCase()}';
  }
}
