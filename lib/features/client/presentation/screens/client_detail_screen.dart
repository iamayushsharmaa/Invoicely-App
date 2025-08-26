import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/client_info_card.dart';
import '../widgets/client_invoice_list.dart';
import '../widgets/client_invoice_status.dart';

class ClientDetailScreen extends StatelessWidget {
  const ClientDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
            icon: Icon(Icons.edit),
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
            ClientInvoiceStatus(),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
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
            Text(
              'Client Invoices',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),

            ClientInvoiceList(
              invoiceNumber: "#0111",
              date: "Aug 30, 2025",
              amount: "\$1200",
              status: "Paid",
            ),
            ClientInvoiceList(
              invoiceNumber: "#0112",
              amount: "\$1000",
              status: "Unpaid",
              date: "Sep 01, 2025",
            ),
            ClientInvoiceList(
              invoiceNumber: "#0113",
              date: "Sep 05, 2025",
              amount: "\$1500",
              status: "Paid",
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
