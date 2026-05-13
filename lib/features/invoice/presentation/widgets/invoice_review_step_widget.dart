import 'package:flutter/material.dart';

import 'invoice_divider.dart';
import 'invoice_review_row.dart';
import 'invoice_section_card.dart';

class InvoiceReviewStepWidget extends StatelessWidget {
  final String invoiceNumber;
  final String invoiceDate;
  final String dueDate;
  final String amount;

  final String clientName;
  final String clientEmail;
  final String clientAddress;

  final List<Map<String, dynamic>> items;

  const InvoiceReviewStepWidget({
    super.key,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.dueDate,
    required this.amount,
    required this.clientName,
    required this.clientEmail,
    required this.clientAddress,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InvoiceSectionCard(
          child: Column(
            children: [
              InvoiceReviewRow(title: 'Invoice Number', value: invoiceNumber),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Invoice Date', value: invoiceDate),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Due Date', value: dueDate),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Amount', value: amount),
            ],
          ),
        ),

        const SizedBox(height: 14),

        InvoiceSectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'To',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              InvoiceReviewRow(title: 'Client Name', value: clientName),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Client Email', value: clientEmail),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Client Address', value: clientAddress),
            ],
          ),
        ),

        const SizedBox(height: 12),

        InvoiceSectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Items',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              if (items.isEmpty)
                const Text(
                  'No items added',
                  style: TextStyle(color: Colors.grey),
                ),

              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InvoiceReviewRow(
                    title: item['name'] ?? '',
                    value: '${item['quantity']} x \$${item['price']}',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
