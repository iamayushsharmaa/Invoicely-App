import 'package:flutter/material.dart';

class StatisticWidget extends StatelessWidget {
  const StatisticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF3F51B5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 18),
          Text(
            'November\nInvoicely Summary',
            style: TextStyle(
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
                textPaidAmount('Paid', '1200'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                textPaidAmount('Unpaid', '3000'),
                VerticalDivider(
                  width: 20,
                  thickness: 1,
                  color: Colors.grey.shade500,
                ),
                textPaidAmount('Overdue', '200'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textPaidAmount(String title, String amount) {
    return SizedBox(
      height: 70,
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
          const SizedBox(height: 6),
          Text(
            '\$$amount',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
