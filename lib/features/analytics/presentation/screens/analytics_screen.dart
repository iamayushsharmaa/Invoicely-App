import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Analytics",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Text(
          "Analytics Screen",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
