import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';

import '../../../../core/type_def.dart';

abstract class InvoicePdfRepository {
  FutureEither<Uint8List> downloadInvoicePdf(
    String invoiceId, {
    String template = "default",
  });
}
