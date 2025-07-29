

import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

abstract class InvoiceEmailRepository{
  Future<void> sendInvoiceEmail(InvoiceEntity);
}