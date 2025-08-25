import 'dart:convert';

import 'package:hive/hive.dart';

import '../model/invoice_response.dart';

class InvoiceCacheService {
  static const String cacheBoxName = 'invoiceCache';
  static const String timestampKey = 'lastFetched';

  Future<void> cacheInvoices(List<InvoiceResponse> invoices) async {
    final box = await Hive.openBox(cacheBoxName);
    await box.put('invoices', invoices);
    await box.put(timestampKey, DateTime.now().toIso8601String());
  }

  Future<List<InvoiceResponse>?> getCachedInvoices() async {
    final box = await Hive.openBox(cacheBoxName);
    final invoices = box.get('invoices');
    if (invoices != null && invoices is List<InvoiceResponse>) {
      return invoices;
    }
    return null;
  }

  Future<bool> isCacheValid({int durationInMinutes = 5}) async {
    final box = await Hive.openBox(cacheBoxName);
    final lastFetched = box.get(timestampKey);
    if (lastFetched != null) {
      final diff = DateTime.now()
          .difference(DateTime.parse(lastFetched))
          .inMinutes;
      return diff < durationInMinutes;
    }
    return false;
  }

  Future<void> clearCache() async {
    final box = await Hive.openBox(cacheBoxName);
    await box.delete('invoices');
    await box.delete(timestampKey);
  }
}
