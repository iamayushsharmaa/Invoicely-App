import 'package:flutter/material.dart';

import 'add_item_button.dart';
import 'invoice_item_card.dart';

class InvoiceItemsSection extends StatelessWidget {
  final List<TextEditingController> itemNameControllers;
  final List<TextEditingController> quantityControllers;
  final List<TextEditingController> priceControllers;

  final VoidCallback onAddItem;

  final void Function(int index) onRemoveItem;

  const InvoiceItemsSection({
    super.key,
    required this.itemNameControllers,
    required this.quantityControllers,
    required this.priceControllers,
    required this.onAddItem,
    required this.onRemoveItem,
  });

  double _calculateTotal(int index) {
    final quantity = double.tryParse(quantityControllers[index].text) ?? 0;

    final price = double.tryParse(priceControllers[index].text) ?? 0;

    return quantity * price;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Invoice Items',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            AddItemButton(onPressed: onAddItem),
          ],
        ),

        const SizedBox(height: 18),

        ListView.builder(
          itemCount: itemNameControllers.length,

          shrinkWrap: true,

          physics: const NeverScrollableScrollPhysics(),

          itemBuilder: (context, index) {
            return InvoiceItemCard(
              itemNameController: itemNameControllers[index],

              quantityController: quantityControllers[index],

              priceController: priceControllers[index],

              total: _calculateTotal(index).toStringAsFixed(2),

              onRemove: () => onRemoveItem(index),
            );
          },
        ),
      ],
    );
  }
}
