import '../../model/invoice_model.dart';

abstract interface class InvoiceLocalDataSource {
  Future<List<InvoiceModel>> getCachedInvoices();

  Future<InvoiceModel?> getCachedInvoiceById(String invoiceId);

  Future<void> cacheInvoices(List<InvoiceModel> invoices);

  Future<void> cacheInvoice(InvoiceModel invoice);

  Future<void> deleteInvoiceFromCache(String invoiceId);

  Future<void> clearCache();
}
