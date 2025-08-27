part of 'invoice_bloc.dart';

abstract class InvoiceState extends Equatable {
  const InvoiceState();

  @override
  List<Object?> get props => [];
}

class InvoiceInitial extends InvoiceState {}

class InvoiceLoading extends InvoiceState {}

class InvoiceLoaded extends InvoiceState {
  final List<InvoiceEntity> invoices;

  const InvoiceLoaded(this.invoices);

  @override
  List<Object?> get props => [invoices];
}

class SingleInvoiceLoaded extends InvoiceState {
  final InvoiceEntity invoice;

  const SingleInvoiceLoaded(this.invoice);

  @override
  List<Object?> get props => [invoice];
}

class InvoiceSuccess extends InvoiceState {
  final String message;

  const InvoiceSuccess(this.message);

  @override
  List<Object?> get props => [message];
}

class InvoiceError extends InvoiceState {
  final String error;

  const InvoiceError(this.error);

  @override
  List<Object?> get props => [error];
}
