import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/create_invoice_params.dart';
import '../entities/invoice_enitity.dart';
import '../repository/invoice_repository.dart';

class UpdateInvoiceParams {
  final String invoiceId;
  final CreateInvoiceParams data;

  const UpdateInvoiceParams({required this.invoiceId, required this.data});
}

class UpdateInvoiceUseCase
    implements UseCase<InvoiceEntity, UpdateInvoiceParams> {
  final InvoiceRepository _repository;

  const UpdateInvoiceUseCase(this._repository);

  @override
  Future<Either<Failure, InvoiceEntity>> call(UpdateInvoiceParams params) =>
      _repository.updateInvoice(params.invoiceId, params.data);
}
