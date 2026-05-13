import 'package:flutter/material.dart';

import 'invoice_dark_text_field.dart';

class AddInvoiceItemBottomSheet extends StatefulWidget {
  final Function(Map<String, dynamic>) onSave;

  const AddInvoiceItemBottomSheet({super.key, required this.onSave});

  @override
  State<AddInvoiceItemBottomSheet> createState() =>
      _AddInvoiceItemBottomSheetState();
}

class _AddInvoiceItemBottomSheetState extends State<AddInvoiceItemBottomSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _priceController;
  late final TextEditingController _quantityController;
  late final TextEditingController _taxController;

  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController();
    _priceController = TextEditingController();
    _quantityController = TextEditingController();
    _taxController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    _taxController.dispose();
    super.dispose();
  }

  void _saveItem() {
    widget.onSave({
      "name": _nameController.text,
      "price": double.tryParse(_priceController.text) ?? 0,
      "quantity": int.tryParse(_quantityController.text) ?? 1,
      "tax": double.tryParse(_taxController.text) ?? 0,
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),

      decoration: BoxDecoration(
        color: Colors.grey.shade900,

        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Add Item",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 16),

          InvoiceDarkTextField(controller: _nameController, hint: "Item Name"),

          const SizedBox(height: 12),

          InvoiceDarkTextField(
            controller: _priceController,
            hint: "Price",
            isNumber: true,
          ),

          const SizedBox(height: 12),

          InvoiceDarkTextField(
            controller: _quantityController,
            hint: "Quantity",
            isNumber: true,
          ),

          const SizedBox(height: 12),

          InvoiceDarkTextField(
            controller: _taxController,
            hint: "Tax %",
            isNumber: true,
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              onPressed: _saveItem,

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              child: const Text(
                "Save Item",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
