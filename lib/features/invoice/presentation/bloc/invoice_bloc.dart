import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invoice/features/invoice/data/repository/email_repository.dart';
import 'package:invoice/features/invoice/data/repository/invoice_pdf_repository.dart';

import '../../data/repository/invoice_repository.dart';
import 'invoice_event.dart';
import 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  final InvoiceRepository invoiceRepository;
  final InvoicePdfRepository pdfRepository;
  final EmailRepository emailRepository;

  InvoiceBloc({
    required this.pdfRepository,
    required this.emailRepository,
    required this.invoiceRepository,
  }) : super(const InvoiceState.initial()) {
    on<LoadInvoices>(_onLoadInvoice);
    on<GetInvoiceById>(_getInvoiceById);
    on<CreateInvoice>(_createInvoice);
    on<SearchInvoices>(_searchInvoices);
    on<UpdateInvoice>(_updateInvoice);
    on<MarkPaidInvoice>(_markPaidInvoice);
    on<DeleteInvoice>(_deleteInvoice);

    on<SendInvoiceEmail>(_onSendInvoiceEmail);
    on<DownloadInvoicePdf>(_onDownloadInvoicePdf);
  }

  FutureOr<void> _onLoadInvoice(
    LoadInvoices event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.initial());
    final result = await invoiceRepository.getAllInvoices();
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (invoices) => emit(InvoiceState.loaded(invoices)),
    );
  }

  Future<void> _getInvoiceById(
    GetInvoiceById event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.getInvoiceById(event.id);
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (invoice) => emit(InvoiceState.singleInvoiceLoaded(invoice)),
    );
  }

  Future<void> _createInvoice(
    CreateInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.createInvoice(event.request);
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (invoice) => emit(InvoiceState.success('Invoice created successfully')),
    );
  }

  Future<void> _updateInvoice(
    UpdateInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.updateInvoice(
      event.id,
      event.request,
    );
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (_) => emit(const InvoiceState.success('Invoice updated successfully')),
    );
  }

  Future<void> _deleteInvoice(
    DeleteInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(InvoiceState.loading());
    await state.maybeWhen(
      loaded: (invoices) async {
        final updatedList = invoices
            .where((invoice) => invoice.id != event.id)
            .toList();
        emit(InvoiceState.loaded(updatedList));

        final result = await invoiceRepository.deleteInvoice(event.id);

        result.fold(
          (failure) {
            emit(InvoiceState.error(failure.message));
            add(LoadInvoices()); // Reload list if needed
          },
          (_) {
            emit(const InvoiceState.success('Invoice deleted successfully'));
          },
        );
      },
      orElse: () {},
    );
  }

  Future<void> _markPaidInvoice(
    MarkPaidInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.markPaidInvoice(
      event.id,
      event.request,
    );
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (_) => emit(const InvoiceState.success('Invoice marked as paid')),
    );
  }

  Future<void> _searchInvoices(
    SearchInvoices event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.searchInvoices(
      invoiceNumber: event.invoiceNumber,
      clientName: event.clientName,
      fromDate: event.fromDate,
      toDate: event.toDate,
    );
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (invoices) => emit(InvoiceState.loaded(invoices)),
    );
  }

  Future<void> _onSendInvoiceEmail(
    SendInvoiceEmail event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await emailRepository.sendInvoiceEmail(event.invoiceId);
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (_) =>
          emit(const InvoiceState.emailSent('Invoice email sent successfully')),
    );
  }

  Future<void> _onDownloadInvoicePdf(
    DownloadInvoicePdf event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await pdfRepository.downloadInvoicePdf(
      event.invoiceId,
      template: event.template,
    );
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (pdfData) => emit(InvoiceState.pdfDownloaded(pdfData)),
    );
  }
}
