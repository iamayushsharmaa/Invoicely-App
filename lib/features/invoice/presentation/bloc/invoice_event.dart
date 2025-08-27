import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_request_entity.dart';

part 'invoice_event.freezed.dart';

@freezed
class InvoiceEvent with _$InvoiceEvent {
  const factory InvoiceEvent.loadInvoices() = LoadInvoices;

  const factory InvoiceEvent.getInvoiceById(String id) = GetInvoiceById;

  const factory InvoiceEvent.createInvoice(InvoiceRequestEntity request) =
      CreateInvoice;

  const factory InvoiceEvent.updateInvoice(String id, InvoiceRequestEntity request) =
      UpdateInvoice;

  const factory InvoiceEvent.markPaidInvoice(String id, InvoiceRequestEntity request) =
      MarkPaidInvoice;

  const factory InvoiceEvent.deleteInvoice(String id) = DeleteInvoice;

  const factory InvoiceEvent.searchInvoices({
    String? invoiceNumber,
    String? clientName,
    DateTime? fromDate,
    DateTime? toDate,
  }) = SearchInvoices;
}
