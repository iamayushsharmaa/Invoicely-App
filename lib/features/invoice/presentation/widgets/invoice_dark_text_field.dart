import 'package:flutter/material.dart';

class InvoiceDarkTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool readOnly;
  final bool isNumber;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  const InvoiceDarkTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.readOnly = false,
    this.isNumber = false,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: readOnly,

      keyboardType: isNumber ? TextInputType.number : TextInputType.text,

      style: const TextStyle(color: Colors.white),

      onChanged: onChanged,

      onTap: onTap,

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: const TextStyle(color: Colors.white54),

        filled: true,
        fillColor: Colors.grey.shade900,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
      ),
    );
  }
}
