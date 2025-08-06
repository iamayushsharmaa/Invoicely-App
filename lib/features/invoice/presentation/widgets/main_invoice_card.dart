import 'package:flutter/material.dart';

class MainInvoiceCard extends StatelessWidget {
  const MainInvoiceCard({super.key});

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
                    child: Icon(Icons.person),
                  ),

                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LendFlow invoice',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'lendflow@gmail.com',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Paid',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            height: 66,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textNumberWidget('Amount', '\$5,000'),
                textNumberWidget('No.', '#0023'),
                textNumberWidget('Date', '05 July 2025'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textNumberWidget(String title, String value) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 0),
          Text(
            '$value',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
