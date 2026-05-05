import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/invoice_repository.dart';

class DeleteInvoiceUseCase implements UseCase<void, String> {
  final InvoiceRepository _repository;

  const DeleteInvoiceUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(String invoiceId) =>
      _repository.deleteInvoice(invoiceId);
}
