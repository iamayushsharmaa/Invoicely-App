import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';

import 'package:fpdart/fpdart.dart';
import 'package:invoice/features/invoice/domain/repository/invoice_pdf_repository.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/type_def.dart';
import '../local/invoice_cache_service.dart';
import '../remote/InvoiceApiService.dart';

class InvoicePdfRepositoryImpl implements InvoicePdfRepository {
  final InvoiceApiService apiService;
  final InvoiceCacheService cacheService;

  InvoicePdfRepositoryImpl({
    required this.apiService,
    required this.cacheService,
  });

  @override
  FutureEither<Uint8List> downloadInvoicePdf(
    String invoiceId, {
    String template = "default",
  }) async {
    try {
      final pdfData = await apiService.downloadInvoicePdf(
        invoiceId,
        template: template,
      );
      if (pdfData != null) {
        return Right(pdfData);
      } else {
        return Left(Failure("Failed to download PDF"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
