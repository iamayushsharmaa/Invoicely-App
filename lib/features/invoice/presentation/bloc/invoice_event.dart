part of 'invoice_bloc.dart';

abstract class InvoiceEvent extends Equatable {
  const InvoiceEvent();

  @override
  List<Object?> get props => [];
}

class LoadInvoices extends InvoiceEvent {}

class GetInvoiceById extends InvoiceEvent {
  final String id;

  const GetInvoiceById(this.id);

  @override
  List<Object?> get props => [id];
}

class CreateInvoiceEvent extends InvoiceEvent {
  final InvoiceRequestEntity request;

  const CreateInvoiceEvent(this.request);

  @override
  List<Object?> get props => [request];
}

class UpdateInvoice extends InvoiceEvent {
  final String id;
  final InvoiceRequestEntity request;

  const UpdateInvoice(this.id, this.request);

  @override
  List<Object?> get props => [id, request];
}

class DeleteInvoice extends InvoiceEvent {
  final String id;

  const DeleteInvoice(this.id);

  @override
  List<Object?> get props => [id];
}

class SearchInvoices extends InvoiceEvent {
  final String? invoiceNumber;
  final String? clientName;
  final String? fromDate;
  final String? toDate;

  const SearchInvoices({
    this.invoiceNumber,
    this.clientName,
    this.fromDate,
    this.toDate,
  });

  @override
  List<Object?> get props => [invoiceNumber, clientName, fromDate, toDate];
}
