import 'package:flutter/material.dart';

class InvoiceSplash extends StatelessWidget {
  const InvoiceSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF3F51B5), Colors.black],
            stops: [0.20, 0.7],
          ),
        ),
        child: const Center(
          child: Text(
            'Invoicely.',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
