import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/create_invoice_params.dart';
import '../../domain/entities/invoice_enitity.dart';
import '../../domain/usecases/create_invoice_usecase.dart';
import '../../domain/usecases/delete_invoice_usecase.dart';
import '../../domain/usecases/get_all_invoices_usecase.dart';
import '../../domain/usecases/get_invoice_by_client_usecase.dart';
import '../../domain/usecases/get_invoice_by_id_usecase.dart';
import '../../domain/usecases/mark_as_paid_usecase.dart';
import '../../domain/usecases/search_invoice_usecase.dart';
import '../../domain/usecases/update_invoice_usecase.dart';

part 'invoice_bloc.freezed.dart';
part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  final GetAllInvoicesUseCase _getAllInvoices;
  final GetInvoiceByIdUseCase _getInvoiceById;
  final GetInvoicesByClientUseCase _getInvoicesByClient;
  final CreateInvoiceUseCase _createInvoice;
  final UpdateInvoiceUseCase _updateInvoice;
  final DeleteInvoiceUseCase _deleteInvoice;
  final MarkAsPaidUseCase _markAsPaid;
  final SearchInvoicesUseCase _searchInvoices;

  InvoiceBloc({
    required GetAllInvoicesUseCase getAllInvoices,
    required GetInvoiceByIdUseCase getInvoiceById,
    required GetInvoicesByClientUseCase getInvoicesByClient,
    required CreateInvoiceUseCase createInvoice,
    required UpdateInvoiceUseCase updateInvoice,
    required DeleteInvoiceUseCase deleteInvoice,
    required MarkAsPaidUseCase markAsPaid,
    required SearchInvoicesUseCase searchInvoices,
  }) : _getAllInvoices = getAllInvoices,
       _getInvoiceById = getInvoiceById,
       _getInvoicesByClient = getInvoicesByClient,
       _createInvoice = createInvoice,
       _updateInvoice = updateInvoice,
       _deleteInvoice = deleteInvoice,
       _markAsPaid = markAsPaid,
       _searchInvoices = searchInvoices,
       super(const InvoiceState.initial()) {
    on<LoadInvoices>(_onLoadInvoices);
    on<LoadInvoiceById>(_onLoadInvoiceById);
    on<LoadInvoicesByClient>(_onLoadInvoicesByClient);
    on<CreateInvoice>(_onCreateInvoice);
    on<UpdateInvoice>(_onUpdateInvoice);
    on<DeleteInvoice>(_onDeleteInvoice);
    on<MarkAsPaid>(_onMarkAsPaid);
    on<SearchInvoices>(_onSearchInvoices);
    on<ClearSelectedInvoice>(_onClearSelectedInvoice);

    // on<SendInvoiceEmail>(_onSendInvoiceEmail);
    // on<DownloadInvoicePdf>(_onDownloadInvoicePdf);
  }

  Future<void> _onLoadInvoices(
    LoadInvoices event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.listLoading());
    final result = await _getAllInvoices(const NoParams());
    result.fold(
      (failure) => emit(InvoiceState.listError(failure.message)),
      (invoices) => emit(InvoiceState.listLoaded(invoices)),
    );
  }

  Future<void> _onLoadInvoiceById(
    LoadInvoiceById event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.detailLoading());
    final result = await _getInvoiceById(event.invoiceId);
    result.fold(
      (failure) => emit(InvoiceState.detailError(failure.message)),
      (invoice) => emit(InvoiceState.detailLoaded(invoice)),
    );
  }

  Future<void> _onLoadInvoicesByClient(
    LoadInvoicesByClient event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.listLoading());
    final result = await _getInvoicesByClient(event.clientId);
    result.fold(
      (failure) => emit(InvoiceState.listError(failure.message)),
      (invoices) => emit(InvoiceState.listLoaded(invoices)),
    );
  }

  Future<void> _onCreateInvoice(
    CreateInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.actionLoading());
    final result = await _createInvoice(event.params);
    result.fold(
      (failure) => emit(InvoiceState.actionError(failure.message)),
      (invoice) =>
          emit(InvoiceState.actionSuccess('Invoice created successfully')),
    );
  }

  Future<void> _onUpdateInvoice(
    UpdateInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.actionLoading());
    final result = await _updateInvoice(event.params);
    result.fold(
      (failure) => emit(InvoiceState.actionError(failure.message)),
      (invoice) => emit(
        const InvoiceState.actionSuccess('Invoice updated successfully'),
      ),
    );
  }

  Future<void> _onDeleteInvoice(
    DeleteInvoice event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.actionLoading());
    final result = await _deleteInvoice(event.invoiceId);
    result.fold(
      (failure) => emit(InvoiceState.actionError(failure.message)),
      (_) => emit(
        const InvoiceState.actionSuccess('Invoice deleted successfully'),
      ),
    );
  }

  Future<void> _onMarkAsPaid(
    MarkAsPaid event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.actionLoading());
    final result = await _markAsPaid(event.invoiceId);
    result.fold(
      (failure) => emit(InvoiceState.actionError(failure.message)),
      (invoice) =>
          emit(const InvoiceState.actionSuccess('Invoice marked as paid')),
    );
  }

  Future<void> _onSearchInvoices(
    SearchInvoices event,
    Emitter<InvoiceState> emit,
  ) async {
    emit(const InvoiceState.listLoading());
    final result = await _searchInvoices(event.params);
    result.fold(
      (failure) => emit(InvoiceState.listError(failure.message)),
      (invoices) => emit(InvoiceState.listLoaded(invoices)),
    );
  }

  void _onClearSelectedInvoice(
    ClearSelectedInvoice event,
    Emitter<InvoiceState> emit,
  ) {
    emit(const InvoiceState.initial());
  }
}
