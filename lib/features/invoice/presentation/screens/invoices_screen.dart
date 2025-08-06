import 'package:flutter/material.dart';
import 'package:invoice/features/invoice/presentation/widgets/main_invoice_card.dart';
import 'package:invoice/features/invoice/presentation/widgets/status_invoice_card.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: SearchTextField(
                controller: _searchController,
                hintText: 'Search invoices',
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
            ),
            const SizedBox(height: 14),
            InvoiceStatusCard(),
            const SizedBox(height: 14),
            Text(
              'Invoices',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 14),
            MainInvoiceCard()
          ],
        ),
      ),
    );
  }
}
