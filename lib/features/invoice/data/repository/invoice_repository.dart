import '../../../../core/type_def.dart';
import '../model/invoice_request.dart';
import '../model/invoice_response.dart';

abstract class InvoiceRepository {
  FutureEither<InvoiceResponse?> createInvoice(InvoiceRequest request);

  FutureEither<List<InvoiceResponse>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    DateTime? fromDate,
    DateTime? toDate,
  });

  FutureEither<List<InvoiceResponse>> getAllInvoices();

  FutureEither<InvoiceResponse?> getInvoiceById(String id);

  FutureEither<void> deleteInvoice(String invoiceId);

  FutureEither<InvoiceResponse?> updateInvoice(String invoiceId, InvoiceRequest request);

  void clearCache();
}
