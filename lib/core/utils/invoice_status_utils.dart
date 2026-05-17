import 'package:flutter/material.dart';

import '../../features/invoice/domain/entities/invoice_enitity.dart';

class InvoiceStatusUtils {
  static Color color(String status) {
    switch (status.toUpperCase()) {
      case 'PAID':
        return Colors.green;
      case 'UNPAID':
        return Colors.orange;
      case 'OVERDUE':
        return Colors.red;
      case 'DRAFT':
        return Colors.grey;
      default:
        return Colors.white;
    }
  }

  static IconData icon(String status) {
    switch (status.toUpperCase()) {
      case 'PAID':
        return Icons.check_circle_outline;
      case 'UNPAID':
        return Icons.access_time;
      case 'OVERDUE':
        return Icons.warning_amber_outlined;
      case 'DRAFT':
        return Icons.edit_outlined;
      default:
        return Icons.info_outline;
    }
  }

  static String format(String status) {
    final s = status.toUpperCase();
    return '${s[0]}${s.substring(1).toLowerCase()}';
  }

  static List<InvoiceEntity> filter(
    List<InvoiceEntity> invoices,
    String selectedStatus,
  ) {
    switch (selectedStatus) {
      case 'Paid':
        return invoices.where((i) => i.status.toUpperCase() == 'PAID').toList();
      case 'Pending':
        return invoices
            .where((i) => i.status.toUpperCase() == 'UNPAID')
            .toList();
      default:
        return invoices;
    }
  }
}
