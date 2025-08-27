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
}
