import 'package:flutter/material.dart';

class InvoicesCard extends StatelessWidget {
  const InvoicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(children: []),
    );
  }
}
