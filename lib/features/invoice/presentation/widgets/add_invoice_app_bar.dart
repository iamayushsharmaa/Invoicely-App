import 'package:flutter/material.dart';

class AddInvoiceAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentStep;
  final VoidCallback onClose;
  final VoidCallback? onSave;

  const AddInvoiceAppBar({
    super.key,
    required this.currentStep,
    required this.onClose,
    this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.close, color: Colors.white),
        onPressed: onClose,
      ),
      centerTitle: true,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Create Invoice',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Text(
            'Step ${currentStep + 1} of 4',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.check,
            color: currentStep == 3 ? Colors.white : Colors.grey.shade800,
          ),
          onPressed: currentStep == 3 ? onSave : null,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
