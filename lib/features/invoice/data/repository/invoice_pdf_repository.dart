import '../../domain/entities/invoice_enitity.dart';

abstract class InvoicePdfRepository {
  Future<void> generateInvoicePdf(InvoiceEntity invoice);
}
