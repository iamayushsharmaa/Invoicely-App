import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repository/invoice_repository.dart';

class SendInvoiceEmailUseCase implements UseCase<String, String> {
  final InvoiceRepository _repository;

  const SendInvoiceEmailUseCase(this._repository);

  @override
  Future<Either<Failure, String>> call(String invoiceId) =>
      _repository.sendInvoiceEmail(invoiceId);
}
