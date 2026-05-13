import 'package:flutter/material.dart';

class InvoiceSectionCard extends StatelessWidget {
  final Widget child;

  const InvoiceSectionCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
