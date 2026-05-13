import 'package:flutter/material.dart';

import 'invoice_dark_text_field.dart';

class InvoiceDetailsStepWidget extends StatelessWidget {
  final TextEditingController invoiceNumberController;
  final TextEditingController invoiceDateController;
  final TextEditingController dueDateController;

  final VoidCallback onInvoiceDateTap;
  final VoidCallback onDueDateTap;

  const InvoiceDetailsStepWidget({
    super.key,
    required this.invoiceNumberController,
    required this.invoiceDateController,
    required this.dueDateController,
    required this.onInvoiceDateTap,
    required this.onDueDateTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),

        const Text(
          'Invoice Number',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 5),

        InvoiceDarkTextField(
          controller: invoiceNumberController,
          hint: "Invoice number",
        ),

        const SizedBox(height: 10),

        const Text(
          'Invoice Date',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 6),

        InvoiceDarkTextField(
          controller: invoiceDateController,
          hint: "Invoice Date",
          readOnly: true,
          onTap: onInvoiceDateTap,
        ),

        const SizedBox(height: 10),

        const Text(
          'Due Date',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 6),

        InvoiceDarkTextField(
          controller: dueDateController,
          hint: "Due Date",
          readOnly: true,
          onTap: onDueDateTap,
        ),
      ],
    );
  }
}
