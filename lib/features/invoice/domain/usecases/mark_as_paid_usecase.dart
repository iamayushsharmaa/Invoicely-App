import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/invoice_enitity.dart';
import '../repository/invoice_repository.dart';

class MarkAsPaidUseCase implements UseCase<InvoiceEntity, String> {
  final InvoiceRepository _repository;

  const MarkAsPaidUseCase(this._repository);

  @override
  Future<Either<Failure, InvoiceEntity>> call(String invoiceId) =>
      _repository.markAsPaid(invoiceId);
}
