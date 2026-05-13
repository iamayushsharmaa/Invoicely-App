import 'package:flutter/material.dart';

class InvoiceReviewRow extends StatelessWidget {
  final String title;
  final String value;

  const InvoiceReviewRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(value, style: const TextStyle(fontSize: 15, color: Colors.white)),
      ],
    );
  }
}
