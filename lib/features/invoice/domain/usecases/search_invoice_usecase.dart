import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/invoice_enitity.dart';
import '../repository/invoice_repository.dart';

class SearchInvoiceParams {
  final String? invoiceNumber;
  final String? clientName;
  final int page;
  final int size;

  const SearchInvoiceParams({
    this.invoiceNumber,
    this.clientName,
    this.page = 0,
    this.size = 10,
  });
}

class SearchInvoicesUseCase
    implements UseCase<List<InvoiceEntity>, SearchInvoiceParams> {
  final InvoiceRepository _repository;

  const SearchInvoicesUseCase(this._repository);

  @override
  Future<Either<Failure, List<InvoiceEntity>>> call(
    SearchInvoiceParams params,
  ) => _repository.searchInvoices(
    invoiceNumber: params.invoiceNumber,
    clientName: params.clientName,
    page: params.page,
    size: params.size,
  );
}
