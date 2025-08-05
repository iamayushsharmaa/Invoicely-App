import 'package:flutter/material.dart';

class InvoiceStatusCard extends StatelessWidget {
  const InvoiceStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF3F51B5),
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
                textPaidAmount('12', 'Paid'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                textPaidAmount('08', 'Unpaid'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                textPaidAmount('3', 'Overdue'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                textPaidAmount('5', 'Draft'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textPaidAmount(String invoiceNum, String title) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$invoiceNum',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 0),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
