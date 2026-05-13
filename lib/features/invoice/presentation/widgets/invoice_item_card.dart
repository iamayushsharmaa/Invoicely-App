import 'package:flutter/material.dart';

import 'invoice_text_field.dart';

class InvoiceItemCard extends StatelessWidget {
  final TextEditingController itemNameController;
  final TextEditingController quantityController;
  final TextEditingController priceController;
  final String total;
  final VoidCallback onRemove;

  const InvoiceItemCard({
    super.key,
    required this.itemNameController,
    required this.quantityController,
    required this.priceController,
    required this.total,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),

      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),

        borderRadius: BorderRadius.circular(18),

        border: Border.all(color: Colors.white12),
      ),

      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Invoice Item',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              IconButton(
                onPressed: onRemove,

                icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
              ),
            ],
          ),

          const SizedBox(height: 12),

          InvoiceTextField(
            controller: itemNameController,
            label: 'Item Name',
            hint: 'Enter item name',

            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Item name required';
              }

              return null;
            },
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: InvoiceTextField(
                  controller: quantityController,
                  label: 'Quantity',
                  hint: '1',
                  keyboardType: TextInputType.number,

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Required';
                    }

                    return null;
                  },
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: InvoiceTextField(
                  controller: priceController,
                  label: 'Price',
                  hint: '0.00',
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Required';
                    }

                    return null;
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              Text(
                'Total: ₹$total',

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
