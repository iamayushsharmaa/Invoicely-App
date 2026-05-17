import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invoice/core/utils/app_snackbar.dart';

import '../../../../core/di/injections.dart';
import '../../../../core/services/pdf_service.dart';
import '../../../client/domain/entities/client_enitity.dart';
import '../../../client/presentation/bloc/client_bloc.dart';
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
  bool _isMarkingAsPaid = false;
  InvoiceEntity? _cachedInvoice;
  ClientEntity? _cachedClient;
  bool _isShareRequest = false;
  final _pdfService = sl<PdfService>();

  void _handleStateChanges(BuildContext context, InvoiceState state) {
    state.whenOrNull(
      detailLoaded: (invoice) {
        context.read<ClientBloc>().add(
          ClientEvent.getClientById(invoice.clientId),
        );
      },
      actionSuccess: (message) {
        setState(() => _isMarkingAsPaid = false);
        context.read<InvoiceBloc>().add(LoadInvoiceById(widget.invoiceId));
        AppSnackbar.success(context, message);
      },
      actionError: (message) {
        setState(() => _isMarkingAsPaid = false);
        AppSnackbar.error(context, message);
      },
      emailSent: (message) {
        AppSnackbar.success(context, message);
      },
      emailError: (message) {
        AppSnackbar.error(context, message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClientBloc, ClientState>(
      listenWhen: (previous, current) =>
          current.maybeWhen(clientLoaded: (_) => true, orElse: () => false),
      listener: (context, state) {
        state.whenOrNull(
          clientLoaded: (client) {
            setState(() => _cachedClient = client);
          },
        );
      },
      child: BlocConsumer<InvoiceBloc, InvoiceState>(
        listenWhen: (previous, current) =>
            current is InvoiceActionSuccess ||
            current is InvoiceActionError ||
            current is InvoiceEmailSent ||
            current is InvoiceEmailError ||
            current is InvoiceDetailLoaded,
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
          if (state is InvoicePdfLoaded) {
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              try {
                final fileName =
                    'invoice_${_cachedInvoice?.invoiceNumber ?? 'download'}.pdf';
                if (_isShareRequest) {
                  await _pdfService.sharePdf(state.bytes, fileName);
                } else {
                  await _pdfService.openPdf(state.bytes, fileName);
                }
              } catch (e) {
                if (mounted)
                  AppSnackbar.error(context, 'Could not process PDF');
              }
            });
          }

          state.whenOrNull(detailLoaded: (invoice) => _cachedInvoice = invoice);

          return state.maybeWhen(
            detailLoading: () => _cachedInvoice == null
                ? const Scaffold(
                    body: Center(child: CircularProgressIndicator()),
                  )
                : _buildContent(context, state, _cachedInvoice!),
            detailError: (message) => _cachedInvoice != null
                ? _buildContent(context, state, _cachedInvoice!)
                : Scaffold(
                    appBar: AppBar(),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            message,
                            style: const TextStyle(color: Colors.red),
                          ),
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
            orElse: () => _cachedInvoice != null
                ? _buildContent(context, state, _cachedInvoice!)
                : const Scaffold(
                    body: Center(child: CircularProgressIndicator()),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    InvoiceState state,
    InvoiceEntity invoice,
  ) {
    final isPdfLoading = state is InvoicePdfLoading;
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

        onDownload: () {
          setState(() => _isShareRequest = false);
          context.read<InvoiceBloc>().add(
            GeneratePdf(GeneratePdfParams(invoiceId: invoice.id)),
          );
        },
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InvoiceInfoCard(
              invoice: invoice,
              onShare: () {
                setState(() => _isShareRequest = true);
                context.read<InvoiceBloc>().add(
                  GeneratePdf(GeneratePdfParams(invoiceId: invoice.id)),
                );
              },
            ),

            const SizedBox(height: 16),

            // mark as paid — only show if not already paid
            if (!invoice.paid)
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isMarkingAsPaid
                      ? null
                      : () {
                          setState(() => _isMarkingAsPaid = true);
                          context.read<InvoiceBloc>().add(
                            MarkAsPaid(invoice.id),
                          );
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F51B5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: _isMarkingAsPaid
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check),
                            SizedBox(width: 8),
                            Text(
                              'Mark as paid',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
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
              clientEmail: _cachedClient?.email ?? '...',
              clientPhone: _cachedClient?.phone ?? '...',
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
