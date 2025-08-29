import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      body: SingleChildScrollView(
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
            GestureDetector(
              onTap: () => context.pushNamed("invoiceDetails"),
              child: MainInvoiceCard(),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => context.pushNamed("invoiceDetails"),
              child: MainInvoiceCard(),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => context.pushNamed("invoiceDetails"),
              onLongPress: () => _showInvoiceOptions(context),
              child: MainInvoiceCard(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void _showInvoiceOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.delete, color: Colors.red),
                title: Text(
                  "Delete Invoice",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context); // Close bottom sheet
                  _showDeleteConfirmation(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text("Delete Invoice"),
          content: Text(
            "Are you sure you want to delete this invoice? This action cannot be undone.",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                _deleteInvoice(); // Call delete logic
              },
              child: Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  void _deleteInvoice() {
    // Example: Using BLoC
    // context.read<InvoiceBloc>().add(DeleteInvoiceEvent(invoiceId));

    print("Invoice deleted"); // Placeholder
  }
}
