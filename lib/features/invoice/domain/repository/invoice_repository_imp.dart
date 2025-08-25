import 'package:fpdart/fpdart.dart';
import 'package:invoice/features/invoice/data/repository/invoice_repository.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/type_def.dart';
import '../../data/local/invoice_cache_service.dart';
import '../../data/model/invoice_request.dart';
import '../../data/model/invoice_response.dart';
import '../../data/remote/InvoiceApiService.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  final InvoiceApiService apiService;
  final InvoiceCacheService cacheService;

  InvoiceRepositoryImpl({required this.apiService, required this.cacheService});

  @override
  FutureEither<InvoiceResponse> createInvoice(InvoiceRequest request) async {
    try {
      final response = await apiService.createInvoice(request);
      if (response != null) {
        await _refreshCache();
        return Right(response);
      } else {
        return Left(Failure('Failed to create invoice'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
  @override
  FutureEither<List<InvoiceResponse>> getAllInvoices() async {
    try {
      if (await cacheService.isCacheValid()) {
        final cachedInvoices = await cacheService.getCachedInvoices();
        if (cachedInvoices != null) {
          return Right(cachedInvoices);
        }
      }

      final invoices = await apiService.getAllInvoices();
      await cacheService.cacheInvoices(invoices);
      return Right(invoices);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<InvoiceResponse> getInvoiceById(String id) async {
    try {
      final cachedInvoices = await cacheService.getCachedInvoices();
      if (cachedInvoices != null) {
        final invoice = cachedInvoices.firstWhere(
              (inv) => inv.id == id,
          orElse: () => throw Exception('Invoice not found'),
        );
        if (invoice != null) return Right(invoice);
      }

      final invoice = await apiService.getInvoiceById(id);
      if (invoice != null) {
        await _refreshCache();
        return Right(invoice);
      } else {
        return Left(Failure('Invoice not found'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<List<InvoiceResponse>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      final results = await apiService.searchInvoices(
        invoiceNumber: invoiceNumber,
        clientName: clientName,
        fromDate: fromDate,
        toDate: toDate,
      );
      return Right(results);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureVoid deleteInvoice(String id) async {
    try {
      final success = await apiService.deleteInvoice(id);
      if (success) {
        await _refreshCache();
        return const Right(null);
      } else {
        return Left(Failure('Failed to delete invoice'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<InvoiceResponse> updateInvoice(String id, InvoiceRequest request) async {
    try {
      final updated = await apiService.updateInvoice(id, request);
      if (updated != null) {
        await _refreshCache();
        return Right(updated);
      } else {
        return Left(Failure('Failed to update invoice'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  void clearCache() {
    cacheService.clearCache();
  }

  Future<void> _refreshCache() async {
    final invoices = await apiService.getAllInvoices();
    await cacheService.cacheInvoices(invoices);
  }
}
