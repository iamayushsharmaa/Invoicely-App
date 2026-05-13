import 'package:flutter/material.dart';

class InvoiceDivider extends StatelessWidget {
  const InvoiceDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        height: 1,
        color: Colors.grey.shade800,
      ),
    );
  }
}
