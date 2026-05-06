import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/invoice_enitity.dart';
import '../repository/invoice_repository.dart';

class GetInvoicesByClientUseCase
    implements UseCase<List<InvoiceEntity>, String> {
  final InvoiceRepository _repository;

  const GetInvoicesByClientUseCase(this._repository);

  @override
  Future<Either<Failure, List<InvoiceEntity>>> call(String clientId) =>
      _repository.getInvoicesByClient(clientId);
}
