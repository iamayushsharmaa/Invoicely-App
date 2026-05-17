import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/core/utils/app_snackbar.dart';

import '../../../../core/router/route_names.dart';
import '../../../invoice/domain/entities/invoice_enitity.dart';
import '../../../invoice/presentation/bloc/invoice_bloc.dart';
import '../../domain/entities/client_enitity.dart';
import '../bloc/client_bloc.dart';
import '../widgets/client_info_card.dart';
import '../widgets/client_invoice_list.dart';
import '../widgets/client_invoice_status.dart';

class ClientDetailScreen extends StatefulWidget {
  final String clientId;

  const ClientDetailScreen({super.key, required this.clientId});

  @override
  State<ClientDetailScreen> createState() => _ClientDetailScreenState();
}

class _ClientDetailScreenState extends State<ClientDetailScreen> {
  ClientEntity? _cachedClient;

  void _handleClientStateChanges(BuildContext context, ClientState state) {
    state.whenOrNull(
      error: (message) {
        AppSnackbar.error(context, message);
      },
    );
  }

  void _handleInvoiceStateChanges(BuildContext context, InvoiceState state) {
    state.whenOrNull(
      actionSuccess: (message) {
        context.read<InvoiceBloc>().add(const LoadInvoices());
        AppSnackbar.success(context, message);
      },
      actionError: (message) {
        AppSnackbar.error(context, message);
      },
    );
  }

  void _showDeleteClientConfirmation(BuildContext context) {
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
                context.read<ClientBloc>().add(
                  ClientEvent.deleteClient(widget.clientId),
                );
                context.pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _showInvoiceOptions(BuildContext context, String invoiceId) {
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
            children: [
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('View Details'),
                onTap: () {
                  Navigator.pop(ctx);
                  context.pushNamed(
                    RouteNames.invoiceDetails,
                    extra: invoiceId,
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete_outline, color: Colors.red),
                title: const Text(
                  'Delete Invoice',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(ctx);
                  _showDeleteInvoiceDialog(context, invoiceId);
                },
              ),
            ],
          ),
        );
      },
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
                context.read<InvoiceBloc>().add(DeleteInvoice(invoiceId));
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
    return MultiBlocListener(
      listeners: [
        BlocListener<ClientBloc, ClientState>(
          listenWhen: (previous, current) =>
              current.maybeWhen(error: (_) => true, orElse: () => false),
          listener: _handleClientStateChanges,
        ),
        BlocListener<InvoiceBloc, InvoiceState>(
          listenWhen: (previous, current) =>
              current is InvoiceActionSuccess || current is InvoiceActionError,
          listener: _handleInvoiceStateChanges,
        ),
      ],
      child: BlocBuilder<ClientBloc, ClientState>(
        buildWhen: (previous, current) => current.maybeWhen(
          clientLoaded: (_) => true,
          loading: () => true,
          error: (_) => true,
          orElse: () => false,
        ),
        builder: (context, clientState) {
          clientState.whenOrNull(
            clientLoaded: (client) => _cachedClient = client,
          );

          if (_cachedClient == null) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          final client = _cachedClient!;

          return BlocBuilder<InvoiceBloc, InvoiceState>(
            buildWhen: (previous, current) =>
                current is InvoiceListLoaded ||
                current is InvoiceListLoading ||
                current is InvoiceListError ||
                previous is InvoiceListLoading,
            builder: (context, invoiceState) {
              final clientInvoices = invoiceState.maybeWhen(
                listLoaded: (invoices) => invoices,
                orElse: () => <InvoiceEntity>[],
              );

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
                      onPressed: () => context.pushNamed(
                        RouteNames.editClient,
                        extra: client.id,
                      ),
                      icon: const Icon(Icons.edit),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () => _showDeleteClientConfirmation(context),
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
                        name: client.name,
                        email: client.email,
                        phone: client.phone,
                        address: client.address,
                      ),
                      const SizedBox(height: 16),
                      ClientInvoiceStatus(invoices: clientInvoices),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () =>
                              context.pushNamed(RouteNames.addInvoice),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3F51B5),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          icon: const Icon(Icons.add, color: Colors.white),
                          label: const Text(
                            'Add New Invoice',
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
                      const SizedBox(height: 8),
                      clientInvoices.isEmpty
                          ? const Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'No invoices for this client yet',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: clientInvoices.length,
                              itemBuilder: (context, index) {
                                final invoice = clientInvoices[index];
                                return GestureDetector(
                                  onLongPress: () =>
                                      _showInvoiceOptions(context, invoice.id),
                                  child: ClientInvoiceList(invoice: invoice),
                                );
                              },
                            ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
