import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/invoice_enitity.dart';
import '../../domain/params/pdf_params.dart';
import '../bloc/invoice_bloc.dart';
import '../widgets/invoice_bill_to_card.dart';
import '../widgets/invoice_detail_bottom_bar.dart';
import '../widgets/invoice_info_card.dart';
import '../widgets/invoice_items_list.dart';

class InvoiceDetailScreen extends StatefulWidget {
  final String invoiceId;

  const InvoiceDetailScreen({super.key, required this.invoiceId});

  @override
  State<InvoiceDetailScreen> createState() => _InvoiceDetailScreenState();
}

class _InvoiceDetailScreenState extends State<InvoiceDetailScreen> {
  // fake client data until getClientById is implemented
  final String _fakeClientEmail = 'client@example.com';
  final String _fakeClientPhone = '+1 234 567 8900';

  @override
  void initState() {
    super.initState();
    context.read<InvoiceBloc>().add(LoadInvoiceById(widget.invoiceId));
  }

  void _handleStateChanges(BuildContext context, InvoiceState state) {
    state.whenOrNull(
      actionSuccess: (message) {
        context.read<InvoiceBloc>().add(LoadInvoiceById(widget.invoiceId));
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
      emailSent: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      emailError: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InvoiceBloc, InvoiceState>(
      listenWhen: (previous, current) =>
          current is InvoiceActionSuccess ||
          current is InvoiceActionError ||
          current is InvoiceEmailSent ||
          current is InvoiceEmailError,
      listener: _handleStateChanges,
      buildWhen: (previous, current) =>
          current is InvoiceDetailLoading ||
          current is InvoiceDetailLoaded ||
          current is InvoiceDetailError ||
          current is InvoicePdfLoading ||
          current is InvoicePdfLoaded ||
          current is InvoiceEmailSending ||
          previous is InvoiceDetailLoading,
      builder: (context, state) {
        // handle pdf bytes when ready
        if (state is InvoicePdfLoaded) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // TODO: open pdf viewer or share
          });
        }

        return state.maybeWhen(
          detailLoading: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
          detailError: (message) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message, style: const TextStyle(color: Colors.red)),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () => context.read<InvoiceBloc>().add(
                      LoadInvoiceById(widget.invoiceId),
                    ),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          ),
          detailLoaded: (invoice) => _buildContent(context, state, invoice),
          orElse: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
        );
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    InvoiceState state,
    InvoiceEntity invoice,
  ) {
    final isPdfLoading = state is InvoicePdfLoading;
    final isActionLoading = state is InvoiceActionLoading;
    final isEmailSending = state is InvoiceEmailSending;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice Details',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: InvoiceDetailBottomBar(
        isLoading: isPdfLoading || isEmailSending,
        onSendEmail: () =>
            context.read<InvoiceBloc>().add(SendInvoiceEmail(invoice.id)),
        onDownload: () => context.read<InvoiceBloc>().add(
          GeneratePdf(GeneratePdfParams(invoiceId: invoice.id)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InvoiceInfoCard(
                invoice: invoice,
                onMarkAsPaid: () {}
            ),

            const SizedBox(height: 16),

            // mark as paid — only show if not already paid
            if (!invoice.paid)
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: isActionLoading
                      ? null
                      : () => context.read<InvoiceBloc>().add(
                          MarkAsPaid(invoice.id),
                        ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F51B5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: isActionLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Icon(Icons.check),
                  label: const Text(
                    'Mark as paid',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

            const SizedBox(height: 20),
            const Text(
              'BILL TO',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(height: 12),
            InvoiceBillToCard(
              billingTo: invoice.billingTo,
              clientEmail: _fakeClientEmail,
              clientPhone: _fakeClientPhone,
            ),
            const SizedBox(height: 20),
            const Text(
              'ITEMS',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            const SizedBox(height: 12),
            InvoiceItemsList(items: invoice.items),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
