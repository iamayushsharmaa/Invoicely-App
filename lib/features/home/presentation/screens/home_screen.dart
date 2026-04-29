import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../client/presentation/widgets/client_invoice_list.dart';
import '../widgets/invoice_card.dart';
import '../widgets/overview_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  String _selectedStatus = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello Ayush',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Overview',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            OverviewCard(),
            const SizedBox(height: 15),
            _statusInvoices(),
            const SizedBox(height: 15),

            Text(
              'This month',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => context.pushNamed("invoiceDetails"),
              child: InvoiceCard(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statusInvoices() {
    return Container(
      height: 57,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _statusOption('All'),
          _statusOption('Pending'),
          _statusOption('Paid'),
        ],
      ),
    );
  }

  Widget _statusOption(String status) {
    final isSelected = _selectedStatus == status;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedStatus = status;
          });
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF3F51B5) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              status,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildInvoiceItem(BuildContext context,
      String invoiceNumber,
      String amount,
      String status,
      String date,) {
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
