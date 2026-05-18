import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_names.dart';
import '../../../../core/utils/app_snackbar.dart';
import '../../../../core/utils/invoice_status_utils.dart';
import '../../../invoice/domain/entities/invoice_enitity.dart';
import '../../../invoice/presentation/bloc/invoice_bloc.dart';
import '../../../user/presentation/bloc/user_bloc.dart';
import '../widgets/invoice_card.dart';
import '../widgets/overview_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedStatus = 'All';

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

  void _showInvoiceOptions(BuildContext context, InvoiceEntity invoice) {
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
                    extra: invoice.id,
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
                  _showDeleteInvoiceDialog(context, invoice.id);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<InvoiceBloc, InvoiceState>(
          listenWhen: (previous, current) =>
              current is InvoiceActionSuccess || current is InvoiceActionError,
          listener: (context, state) {
            state.whenOrNull(
              actionSuccess: (message) {
                context.read<InvoiceBloc>().add(const LoadInvoices());
                AppSnackbar.success(context, message);
              },
              actionError: (message) {
                AppSnackbar.error(context, message);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<UserBloc, UserState>(
            buildWhen: (previous, current) => current.maybeWhen(
              profileLoaded: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) {
              final name = state.maybeWhen(
                profileLoaded: (user) => user.name,
                orElse: () => '',
              );
              return Text(
                'Hello $name',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              );
            },
          ),
          centerTitle: false,
          actions: [
            GestureDetector(
              onTap: () => context.pushNamed(RouteNames.profile),
              child: Container(
                margin: const EdgeInsets.only(right: 16),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF3F51B5),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 22),
              ),
            ),
          ],
        ),
        body: BlocBuilder<InvoiceBloc, InvoiceState>(
          buildWhen: (previous, current) =>
              current is InvoiceListLoaded ||
              current is InvoiceListLoading ||
              current is InvoiceListError ||
              previous is InvoiceListLoading,
          builder: (context, state) {
            return state.maybeWhen(
              listLoading: () =>
                  const Center(child: CircularProgressIndicator()),
              listError: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(message, style: const TextStyle(color: Colors.red)),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () =>
                          context.read<InvoiceBloc>().add(const LoadInvoices()),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              listLoaded: (invoices) {
                final filtered = InvoiceStatusUtils.filter(
                  invoices,
                  _selectedStatus,
                );
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      OverviewCard(invoices: invoices),
                      const SizedBox(height: 15),
                      _statusFilter(),
                      const SizedBox(height: 15),
                      const Text(
                        'This month',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: filtered.isEmpty
                            ? const Center(
                                child: Text(
                                  'No invoices found',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            : ListView.separated(
                                itemCount: filtered.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 10),
                                itemBuilder: (context, index) {
                                  final invoice = filtered[index];
                                  return GestureDetector(
                                    onTap: () => context.pushNamed(
                                      RouteNames.invoiceDetails,
                                      extra: invoice.id,
                                    ),
                                    onLongPress: () =>
                                        _showInvoiceOptions(context, invoice),
                                    child: InvoiceCard(invoice: invoice),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _statusFilter() {
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
        onTap: () => setState(() => _selectedStatus = status),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF3F51B5) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              status,
              style: const TextStyle(
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
}
