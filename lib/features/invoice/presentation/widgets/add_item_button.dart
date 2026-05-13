import 'package:flutter/material.dart';

class AddItemButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddItemButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,

      icon: const Icon(Icons.add),

      label: const Text('Add Item'),

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
