import 'dart:typed_data';

import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../params/pdf_params.dart';
import '../repository/invoice_repository.dart';

class GeneratePdfUseCase implements UseCase<Uint8List, GeneratePdfParams> {
  final InvoiceRepository _repository;

  const GeneratePdfUseCase(this._repository);

  @override
  Future<Either<Failure, Uint8List>> call(GeneratePdfParams params) =>
      _repository.generatePdf(params.invoiceId, params.template);
}
