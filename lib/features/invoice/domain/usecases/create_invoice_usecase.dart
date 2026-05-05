import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/create_invoice_params.dart';
import '../entities/invoice_enitity.dart';
import '../repository/invoice_repository.dart';

class CreateInvoiceUseCase
    implements UseCase<InvoiceEntity, CreateInvoiceParams> {
  final InvoiceRepository _repository;

  const CreateInvoiceUseCase(this._repository);

  @override
  Future<Either<Failure, InvoiceEntity>> call(CreateInvoiceParams params) =>
      _repository.createInvoice(params);
}
