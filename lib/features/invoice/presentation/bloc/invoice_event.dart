part of 'invoice_bloc.dart';

@freezed
class InvoiceEvent with _$InvoiceEvent {
  const factory InvoiceEvent.loadInvoices() = LoadInvoices;

  const factory InvoiceEvent.loadInvoiceById(String invoiceId) =
      LoadInvoiceById;

  const factory InvoiceEvent.loadInvoicesByClient(String clientId) =
      LoadInvoicesByClient;

  const factory InvoiceEvent.createInvoice(CreateInvoiceParams params) =
      CreateInvoice;

  const factory InvoiceEvent.updateInvoice(UpdateInvoiceParams params) =
      UpdateInvoice;

  const factory InvoiceEvent.deleteInvoice(String invoiceId) = DeleteInvoice;

  const factory InvoiceEvent.markAsPaid(String invoiceId) = MarkAsPaid;

  const factory InvoiceEvent.searchInvoices(SearchInvoiceParams params) =
      SearchInvoices;

  const factory InvoiceEvent.clearSelectedInvoice() = ClearSelectedInvoice;

  const factory InvoiceEvent.generatePdf(GeneratePdfParams params) =
      GeneratePdf;

  const factory InvoiceEvent.clearPdf() = ClearPdf;
}
