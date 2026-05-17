import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invoice/features/analytics/presentation/widgets/graph_widget.dart';
import 'package:invoice/features/analytics/presentation/widgets/statistic_widget.dart';

import '../../../../core/utils/app_snackbar.dart';
import '../../../../core/utils/retry_handler.dart';
import '../../../invoice/domain/entities/invoice_enitity.dart';
import '../../../invoice/presentation/bloc/invoice_bloc.dart';
import '../bloc/analytics_bloc.dart';
import '../widgets/top_invoices.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final _retryHandler = RetryHandler();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AnalyticsBloc, AnalyticsState>(
          listenWhen: (previous, current) =>
              current.maybeWhen(error: (_) => true, orElse: () => false),
          listener: (context, state) {
            state.whenOrNull(
              error: (message) => AppSnackbar.error(context, message),
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Analytics', style: TextStyle(fontSize: 25)),
          centerTitle: false,
        ),
        body: BlocBuilder<AnalyticsBloc, AnalyticsState>(
          builder: (context, analyticsState) {
            return BlocBuilder<InvoiceBloc, InvoiceState>(
              buildWhen: (previous, current) =>
                  current is InvoiceListLoaded ||
                  current is InvoiceListLoading ||
                  previous is InvoiceListLoading,
              builder: (context, invoiceState) {
                return analyticsState.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (overview, revenue) {
                    final invoices = invoiceState.maybeWhen(
                      listLoaded: (invoices) => invoices,
                      orElse: () => <InvoiceEntity>[],
                    );

                    return SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          const Text(
                            'Monthly Statistics',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          StatisticWidget(overview: overview),
                          const SizedBox(height: 18),
                          GraphWidget(revenue: revenue),
                          const SizedBox(height: 18),
                          TopInvoices(invoices: invoices),
                          const SizedBox(height: 12),
                        ],
                      ),
                    );
                  },
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          message,
                          style: const TextStyle(color: Colors.red),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            if (!_retryHandler.canRetry) return;
                            _retryHandler.markRetry();
                            context.read<AnalyticsBloc>().add(
                              const AnalyticsEvent.getOverview(),
                            );
                            context.read<AnalyticsBloc>().add(
                              const AnalyticsEvent.getRevenue(type: 'monthly'),
                            );
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
