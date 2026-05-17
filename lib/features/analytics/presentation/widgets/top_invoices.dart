import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_names.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../../invoice/domain/entities/invoice_enitity.dart';

class TopInvoices extends StatelessWidget {
  final List<InvoiceEntity> invoices;

  const TopInvoices({super.key, required this.invoices});

  List<InvoiceEntity> get _topInvoices {
    final sorted = [...invoices]
      ..sort((a, b) => b.totalAmount.compareTo(a.totalAmount));
    return sorted.take(4).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            'Top Invoices',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          _topInvoices.isEmpty
              ? const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'No invoices yet',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _topInvoices.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 4),
                  itemBuilder: (context, index) {
                    final invoice = _topInvoices[index];
                    return GestureDetector(
                      onTap: () => context.pushNamed(
                        RouteNames.invoiceDetails,
                        extra: invoice.id,
                      ),
                      child: _topInvoiceItem(invoice),
                    );
                  },
                ),
        ],
      ),
    );
  }

  Widget _topInvoiceItem(InvoiceEntity invoice) {
    return Container(
      height: 68,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade200,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Icon(Icons.receipt),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    invoice.billingTo,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    DateFormatter.format(invoice.invoiceDate),
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${invoice.currency} ${invoice.totalAmount.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
