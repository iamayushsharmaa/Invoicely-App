import 'package:flutter/material.dart';

class InvoiceDatePicker extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final VoidCallback onTap;
  final String? Function(String?)? validator;

  const InvoiceDatePicker({
    super.key,
    required this.label,
    required this.controller,
    required this.onTap,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 6),

        TextFormField(
          controller: controller,
          readOnly: true,
          validator: validator,
          onTap: onTap,

          style: const TextStyle(color: Colors.white),

          decoration: InputDecoration(
            hintText: 'Select date',

            hintStyle: const TextStyle(color: Colors.white54),

            suffixIcon: const Icon(Icons.calendar_month, color: Colors.white70),

            filled: true,
            fillColor: Colors.white.withOpacity(0.08),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Colors.white24),
            ),

            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Colors.redAccent),
            ),
          ),
        ),
      ],
    );
  }
}
