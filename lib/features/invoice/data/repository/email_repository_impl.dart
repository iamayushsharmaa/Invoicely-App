import 'package:fpdart/fpdart.dart';
import 'package:invoice/features/invoice/data/remote/InvoiceApiService.dart';
import 'package:invoice/features/invoice/domain/repository/email_repository.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/type_def.dart';

class EmailRepositoryImpl implements EmailRepository {
  final InvoiceApiService apiService;

  EmailRepositoryImpl({required this.apiService});

  @override
  FutureEither<void> sendInvoiceEmail(String invoiceId) async {
    try {
      final success = await apiService.sendInvoiceEmail(invoiceId);
      if (success) {
        return Right(null);
      } else {
        return Left(Failure("Failed to send email"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
