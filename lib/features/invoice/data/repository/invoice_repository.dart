import 'package:invoice/features/invoice/domain/entities/invoice_request_entity.dart';

import '../../../../core/type_def.dart';
import '../../domain/entities/invoice_enitity.dart';
import '../model/invoice_request.dart';

abstract class InvoiceRepository {
  FutureEither<InvoiceEntity?> createInvoice(InvoiceRequestEntity entity);

  FutureEither<List<InvoiceEntity>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    DateTime? fromDate,
    DateTime? toDate,
  });

  FutureEither<List<InvoiceEntity>> getAllInvoices();

  FutureEither<InvoiceEntity?> getInvoiceById(String id);

  FutureEither<void> deleteInvoice(String invoiceId);

  FutureEither<InvoiceEntity?> updateInvoice(
    String invoiceId,
    InvoiceRequestEntity request,
  );

  void clearCache();
}
