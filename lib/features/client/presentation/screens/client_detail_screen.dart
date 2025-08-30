import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/client_info_card.dart';
import '../widgets/client_invoice_list.dart';
import '../widgets/client_invoice_status.dart';

class ClientDetailScreen extends StatelessWidget {
  const ClientDetailScreen({super.key});

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text(
            'Delete Client',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Text(
            'Are you sure you want to delete this client?\n\n'
            'This action will also delete all invoices related to this client.',
            style: TextStyle(fontSize: 14),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(ctx).pop();
                context.pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Client Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => context.pushNamed("editClient"),
            icon: const Icon(Icons.edit),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () => _showDeleteConfirmation(context),
            icon: const Icon(Icons.delete),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            ClientInfoCard(
              name: "Noah Henry",
              address: "House no. 84, Bhopal",
              email: "noahhenry01@gmail.com",
              phone: "+91 9876543210",
            ),
            const SizedBox(height: 16),
            const ClientInvoiceStatus(),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => context.pushNamed('addInvoice'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F51B5),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.add, color: Colors.white),
                label: const Text(
                  "Add New Invoice",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Client Invoices',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            _buildInvoiceItem(
              context,
              "#0111",
              "\$1200",
              "Paid",
              "Aug 30, 2025",
            ),
            _buildInvoiceItem(
              context,
              "#0112",
              "\$1000",
              "Unpaid",
              "Sep 01, 2025",
            ),
            _buildInvoiceItem(
              context,
              "#0113",
              "\$1500",
              "Paid",
              "Sep 05, 2025",
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  Widget _buildInvoiceItem(
    BuildContext context,
    String invoiceNumber,
    String amount,
    String status,
    String date,
  ) {
    return GestureDetector(
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (ctx) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(Icons.info_outline),
                    title: const Text('View Details'),
                    onTap: () {
                      Navigator.pop(ctx);
                      context.pushNamed("invoiceDetails");
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                    title: const Text(
                      'Delete Invoice',
                      style: TextStyle(color: Colors.red),
                    ),
                    onTap: () {
                      Navigator.pop(ctx);
                      _showDeleteInvoiceDialog(context, invoiceNumber);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
      child: ClientInvoiceList(
        invoiceNumber: invoiceNumber,
        amount: amount,
        status: status,
        date: date,
      ),
    );
  }

  void _showDeleteInvoiceDialog(BuildContext context, String invoiceId) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text('Delete Invoice'),
          content: const Text(
            'Are you sure you want to delete this invoice? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(ctx).pop();
                // ✅ Dispatch DeleteInvoiceEvent here
                // context.read<InvoiceBloc>().add(DeleteInvoice(invoiceId));
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
