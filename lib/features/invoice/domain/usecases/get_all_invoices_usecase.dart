import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/invoice_enitity.dart';
import '../repository/invoice_repository.dart';

class GetAllInvoicesUseCase implements UseCase<List<InvoiceEntity>, NoParams> {
  final InvoiceRepository _repository;

  const GetAllInvoicesUseCase(this._repository);

  @override
  Future<Either<Failure, List<InvoiceEntity>>> call(NoParams params) =>
      _repository.getAllInvoices();
}
