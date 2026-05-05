import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../entities/create_invoice_params.dart';
import '../entities/invoice_enitity.dart';

abstract interface class InvoiceRepository {
  Future<Either<Failure, List<InvoiceEntity>>> getAllInvoices();

  Future<Either<Failure, InvoiceEntity>> getInvoiceById(String invoiceId);

  Future<Either<Failure, List<InvoiceEntity>>> getInvoicesByClient(
    String clientId,
  );

  Future<Either<Failure, InvoiceEntity>> createInvoice(
    CreateInvoiceParams params,
  );

  Future<Either<Failure, InvoiceEntity>> updateInvoice(
    String invoiceId,
    CreateInvoiceParams params,
  );

  Future<Either<Failure, void>> deleteInvoice(String invoiceId);

  Future<Either<Failure, InvoiceEntity>> markAsPaid(String invoiceId);

  Future<Either<Failure, List<InvoiceEntity>>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    int page = 0,
    int size = 10,
  });
}
