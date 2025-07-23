abstract class InvoiceRepository{
  Future<void> createInvoice();
  Future<void> searchInvoice();
  Future<void> getAllInvoices();
}