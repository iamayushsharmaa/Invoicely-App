import 'package:flutter/material.dart';

import '../../domain/entities/invoice_item_entity.dart';
import 'invoice_item_row.dart';

class InvoiceItemsList extends StatelessWidget {
  final List<InvoiceItemEntity> items;

  const InvoiceItemsList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          return InvoiceItemRow(item: items[index]);
        },
      ),
    );
  }
}
