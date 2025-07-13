import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvoiceSplash extends StatefulWidget {
  const InvoiceSplash({super.key});

  @override
  State<InvoiceSplash> createState() => _InvoiceSplashState();
}

class _InvoiceSplashState extends State<InvoiceSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.go('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Invoicely.',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
