import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/features/invoice/presentation/widgets/main_invoice_card.dart';
import 'package:invoice/features/invoice/presentation/widgets/status_invoice_card.dart';

import '../../../../core/router/route_names.dart';
import '../../../home/presentation/widgets/search_text_field.dart';
import '../../domain/usecases/search_invoice_usecase.dart';
import '../bloc/invoice_bloc.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    if (query.trim().isEmpty) {
      context.read<InvoiceBloc>().add(const LoadInvoices());
    } else {
      context.read<InvoiceBloc>().add(
        SearchInvoices(
          SearchInvoiceParams(
            invoiceNumber: query.trim(),
            clientName: query.trim(),
          ),
        ),
      );
    }
  }

  void _showInvoiceOptions(BuildContext context, String invoiceId) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: const Text(
                  "Delete Invoice",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _showDeleteConfirmation(context, invoiceId);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDeleteConfirmation(BuildContext context, String invoiceId) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: const Text("Delete Invoice"),
          content: const Text(
            "Are you sure you want to delete this invoice? This action cannot be undone.",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<InvoiceBloc>().add(DeleteInvoice(invoiceId));
              },
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InvoiceBloc, InvoiceState>(
      listenWhen: (previous, current) =>
          current is InvoiceActionSuccess || current is InvoiceActionError,
      listener: (context, state) {
        state.whenOrNull(
          actionSuccess: (message) {
            // reload list after delete
            context.read<InvoiceBloc>().add(const LoadInvoices());
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          actionError: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
        );
      },
      buildWhen: (previous, current) =>
          current is InvoiceListLoading ||
          current is InvoiceListLoaded ||
          current is InvoiceListError ||
          previous is InvoiceListLoading,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Invoices',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: SearchTextField(
                    controller: _searchController,
                    hintText: 'Search invoices',
                    onChanged: _onSearch,
                    onSubmitted: _onSearch,
                  ),
                ),
                const SizedBox(height: 14),
                // status card — only show when list is loaded
                state.maybeWhen(
                  listLoaded: (invoices) =>
                      InvoiceStatusCard(invoices: invoices),
                  orElse: () => const SizedBox.shrink(),
                ),
                const SizedBox(height: 14),
                const Text(
                  'Invoices',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 14),
                state.when(
                  initial: () => const SizedBox.shrink(),
                  listLoading: () =>
                      const Center(child: CircularProgressIndicator()),
                  listLoaded: (invoices) => invoices.isEmpty
                      ? const Center(
                          child: Text(
                            'No invoices yet',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: invoices.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final invoice = invoices[index];
                            return GestureDetector(
                              onTap: () => context.pushNamed(
                                RouteNames.invoiceDetails,
                                extra: invoice.id,
                              ),
                              onLongPress: () =>
                                  _showInvoiceOptions(context, invoice.id),
                              child: MainInvoiceCard(invoice: invoice),
                            );
                          },
                        ),
                  listError: (message) => Center(
                    child: Column(
                      children: [
                        Text(
                          message,
                          style: const TextStyle(color: Colors.red),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () => context.read<InvoiceBloc>().add(
                            const LoadInvoices(),
                          ),
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                  // all other states — keep current list visible
                  detailLoading: () => const SizedBox.shrink(),
                  detailLoaded: (_) => const SizedBox.shrink(),
                  detailError: (_) => const SizedBox.shrink(),
                  actionLoading: () => const SizedBox.shrink(),
                  actionSuccess: (_) => const SizedBox.shrink(),
                  actionError: (_) => const SizedBox.shrink(),
                  pdfLoading: () => const SizedBox.shrink(),
                  pdfLoaded: (_) => const SizedBox.shrink(),
                  pdfError: (_) => const SizedBox.shrink(),
                  emailSending: () => const SizedBox.shrink(),
                  emailSent: (_) => const SizedBox.shrink(),
                  emailError: (_) => const SizedBox.shrink(),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
