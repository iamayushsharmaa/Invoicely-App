import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

part 'invoice_state.freezed.dart';

@freezed
class InvoiceState with _$InvoiceState {
  const factory InvoiceState.initial() = _Initial;

  const factory InvoiceState.loading() = _Loading;

  const factory InvoiceState.loaded(List<InvoiceEntity> invoices) = _Loaded;

  const factory InvoiceState.singleInvoiceLoaded(InvoiceEntity? invoice) =
      _SingleInvoiceLoaded;

  const factory InvoiceState.success(String message) = _Success;

  const factory InvoiceState.error(String error) = _Error;

  const factory InvoiceState.emailSent(String message) = _EmailSent;

  const factory InvoiceState.pdfDownloaded(Uint8List pdfData) = _PdfDownloaded;
}
