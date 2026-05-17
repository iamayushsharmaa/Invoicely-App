import 'dart:io';
import 'dart:typed_data';

import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class PdfService {
  Future<void> openPdf(Uint8List bytes, String fileName) async {
    try {
      final file = await _saveToTemp(bytes, fileName);

      final result = await OpenFilex.open(file.path);
      if (result.type != ResultType.done) {
        throw Exception('Could not open PDF: ${result.message}');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sharePdf(Uint8List bytes, String fileName) async {
    try {
      final file = await _saveToTemp(bytes, fileName);
      await Share.shareXFiles([
        XFile(file.path, mimeType: 'application/pdf'),
      ], subject: fileName);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> saveToDownload(Uint8List bytes, String fileName) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$fileName');
      await file.writeAsBytes(bytes);

      return file.path;
    } catch (e) {
      rethrow;
    }
  }

  Future<File> _saveToTemp(Uint8List bytes, String fileName) async {
    final dir = await getTemporaryDirectory();

    final file = File('${dir.path}/$fileName');
    await file.writeAsBytes(bytes);
    return file;
  }
}