import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';

import 'package:path_provider/path_provider.dart';

Future<String> savePdfToFile(Uint8List pdfData, String invoiceNumber) async {
  final dir = await getApplicationDocumentsDirectory();
  final filePath = '${dir.path}/invoice-$invoiceNumber.pdf';
  final file = File(filePath);
  await file.writeAsBytes(pdfData as List<int>);
  return filePath;
}
