import 'package:hive/hive.dart';
import 'package:invoice/features/invoice/data/datasources/local/invoice_local_datasource.dart';
import 'package:invoice/features/invoice/data/model/invoice_model.dart';

import '../../../../../core/errors/failure.dart';

class InvoiceLocalDatasourceImpl implements InvoiceLocalDataSource {
  final Box<InvoiceModel> _invoiceBox;

  InvoiceLocalDatasourceImpl(this._invoiceBox);

  @override
  Future<List<InvoiceModel>> getCachedInvoices() async {
    try {
      return _invoiceBox.values.toList();
    } catch (e) {
      throw const CacheFailure('Failed to load cached invoices.');
    }
  }

  @override
  Future<InvoiceModel?> getCachedInvoiceById(String invoiceId) async {
    try {
      return _invoiceBox.get(invoiceId);
    } catch (e) {
      throw const CacheFailure('Failed to load cached invoice.');
    }
  }

  @override
  Future<void> cacheInvoices(List<InvoiceModel> invoices) async {
    try {
      // keyed by invoice id for O(1) lookup
      final map = {for (final inv in invoices) inv.id: inv};
      await _invoiceBox.putAll(map);
    } catch (e) {
      throw const CacheFailure('Failed to cache invoices.');
    }
  }

  @override
  Future<void> cacheInvoice(InvoiceModel invoice) async {
    try {
      await _invoiceBox.put(invoice.id, invoice);
    } catch (e) {
      throw const CacheFailure('Failed to cache invoice.');
    }
  }

  @override
  Future<void> deleteInvoiceFromCache(String invoiceId) async {
    try {
      await _invoiceBox.delete(invoiceId);
    } catch (e) {
      throw const CacheFailure('Failed to delete cached invoice.');
    }
  }

  @override
  Future<void> clearCache() async {
    try {
      await _invoiceBox.clear();
    } catch (e) {
      throw const CacheFailure('Failed to clear invoice cache.');
    }
  }
}
