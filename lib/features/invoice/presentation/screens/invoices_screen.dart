import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/search_text_field.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invoices',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: SearchTextField(
                controller: _searchController,
                hintText: 'Search here',
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
