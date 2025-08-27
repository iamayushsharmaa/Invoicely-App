import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repository/invoice_repository.dart';
import 'invoice_event.dart';
import 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  final InvoiceRepository invoiceRepository;

  InvoiceBloc({required this.invoiceRepository})
    : super(const InvoiceState.initial()) {
    on<LoadInvoices>(_onLoadInvoice);
    on<GetInvoiceById>(_getInvoiceById);
    on<CreateInvoice>(_createInvoice);
    on<SearchInvoices>(_searchInvoices);
    on<UpdateInvoice>(_updateInvoice);
    on<MarkPaidInvoice>(_markPaidInvoice);
    on<DeleteInvoice>(_deleteInvoice);
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
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.deleteInvoice(event.id);
    result.fold(
      (failure) => emit(InvoiceState.error(failure.message)),
      (_) => emit(const InvoiceState.success('Invoice deleted successfully')),
    );
  }

  Future<void> _markPaidInvoice(
    MarkPaidInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.loading());
    final result = await invoiceRepository.updateInvoice(
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
}
