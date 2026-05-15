import 'package:flutter/material.dart';

import '../../domain/entities/invoice_enitity.dart';

class InvoiceStatusCard extends StatelessWidget {
  final List<InvoiceEntity> invoices;

  const InvoiceStatusCard({super.key, required this.invoices});

  int get _paidCount =>
      invoices.where((i) => i.status.toUpperCase() == 'PAID').length;

  int get _unpaidCount =>
      invoices.where((i) => i.status.toUpperCase() == 'UNPAID').length;

  int get _overdueCount =>
      invoices.where((i) => i.status.toUpperCase() == 'OVERDUE').length;

  int get _draftCount =>
      invoices.where((i) => i.status.toUpperCase() == 'DRAFT').length;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF3F51B5),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _textPaidAmount(_paidCount.toString(), 'Paid'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                _textPaidAmount(_unpaidCount.toString(), 'Unpaid'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                _textPaidAmount(_overdueCount.toString(), 'Overdue'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                _textPaidAmount(_draftCount.toString(), 'Draft'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textPaidAmount(String invoiceNum, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          invoiceNum,
          style: const TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
