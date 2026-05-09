import 'dart:typed_data';

import 'package:invoice/features/invoice/data/model/invoice_model.dart';
import 'package:invoice/features/invoice/domain/entities/create_invoice_params.dart';

abstract interface class InvoiceRemoteDataSource {
  Future<List<InvoiceModel>> getAllInvoices();

  Future<InvoiceModel> getInovoiceById(String invoiceId);

  Future<List<InvoiceModel>> getInvoicesByClient(String clientId);

  Future<InvoiceModel> createInvoice(CreateInvoiceParams params);

  Future<InvoiceModel> updateInvoice(
    String invoiceId,
    CreateInvoiceParams params,
  );

  Future<void> deleteInvoice(String invoiceId);

  Future<InvoiceModel> markAsPaid(String invoiceId);

  Future<List<InvoiceModel>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    int page = 0,
    int size = 10,
  });

  Future<Uint8List> generatePdf(String invoiceId, String template);

  Future<String> sendInvoiceEmail(String invoiceId);
}
