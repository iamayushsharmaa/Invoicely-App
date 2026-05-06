part of 'invoice_bloc.dart';

@freezed
class InvoiceState with _$InvoiceState {
  const factory InvoiceState.initial() = InvoiceInitial;

  // list states
  const factory InvoiceState.listLoading() = InvoiceListLoading;
  const factory InvoiceState.listLoaded(List<InvoiceEntity> invoices) = InvoiceListLoaded;
  const factory InvoiceState.listError(String message) = InvoiceListError;

  // single invoice states
  const factory InvoiceState.detailLoading() = InvoiceDetailLoading;
  const factory InvoiceState.detailLoaded(InvoiceEntity invoice) = InvoiceDetailLoaded;
  const factory InvoiceState.detailError(String message) = InvoiceDetailError;

  // action states (create, update, delete, mark paid)
  const factory InvoiceState.actionLoading() = InvoiceActionLoading;
  const factory InvoiceState.actionSuccess(String message) = InvoiceActionSuccess;
  const factory InvoiceState.actionError(String message) = InvoiceActionError;
}