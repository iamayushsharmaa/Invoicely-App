import 'package:flutter/material.dart';

import '../invoice_item_ui_model.dart';
import 'invoice_divider.dart';
import 'invoice_review_row.dart';
import 'invoice_section_card.dart';

class InvoiceReviewStepWidget extends StatelessWidget {
  final String invoiceNumber;
  final String invoiceDate;
  final String dueDate;
  final String clientName;
  final String clientEmail;
  final String clientAddress;
  final String subtotal;
  final String tax;
  final String discount;
  final String total;
  final List<InvoiceItemUiModel> items;

  const InvoiceReviewStepWidget({
    super.key,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.dueDate,
    required this.clientName,
    required this.clientEmail,
    required this.clientAddress,
    required this.subtotal,
    required this.tax,
    required this.discount,
    required this.total,
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
                    title: item.name,
                    value: '${item.quantity} x \$${item.price}',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),

        InvoiceSectionCard(
          child: Column(
            children: [
              InvoiceReviewRow(title: 'Subtotal', value: subtotal),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Tax', value: tax),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Discount', value: discount),

              const InvoiceDivider(),

              InvoiceReviewRow(title: 'Grand Total', value: total),
            ],
          ),
        ),
      ],
    );
  }
}
