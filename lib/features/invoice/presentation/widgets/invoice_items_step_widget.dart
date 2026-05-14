import 'package:flutter/material.dart';

import '../invoice_item_ui_model.dart';
import 'invoice_dark_text_field.dart';
import 'invoice_item_tile.dart';

class InvoiceItemsStepWidget extends StatelessWidget {
  final TextEditingController taxController;
  final TextEditingController discountController;
  final List<InvoiceItemUiModel> items;
  final Function(int index) onDeleteItem;
  final VoidCallback onAddItem;

  const InvoiceItemsStepWidget({
    super.key,
    required this.taxController,
    required this.discountController,
    required this.onAddItem,
    required this.items,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 2),

        const Text(
          'Tax (%)',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        InvoiceDarkTextField(
          controller: taxController,
          hint: "Enter Tax %",
          isNumber: true,
        ),

        const SizedBox(height: 12),

        const Text(
          'Discount (%)',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        InvoiceDarkTextField(
          controller: discountController,
          hint: "Enter Discount %",
          isNumber: true,
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 50,
          width: double.infinity,

          child: ElevatedButton.icon(
            onPressed: onAddItem,

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: const Icon(Icons.add),
            label: const Text("Add Item"),
          ),
        ),

        const SizedBox(height: 20),

        if (items.isEmpty)
          const Text(
            "No items added yet",
            style: TextStyle(color: Colors.grey),
          ),

        if (items.isNotEmpty)
          ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return InvoiceItemTile(
                item: items[index],

                onDelete: () {
                  onDeleteItem(index);
                },
              );
            },
          ),
      ],
    );
  }
}
