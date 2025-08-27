import 'package:fpdart/fpdart.dart';
import 'package:invoice/features/invoice/data/repository/invoice_repository.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_request_entity.dart';
import 'package:invoice/features/invoice/domain/mapper/invoice_mapper.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/type_def.dart';
import '../../data/local/invoice_cache_service.dart';
import '../../data/remote/InvoiceApiService.dart';
import '../entities/invoice_enitity.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  final InvoiceApiService apiService;
  final InvoiceCacheService cacheService;

  InvoiceRepositoryImpl({required this.apiService, required this.cacheService});

  @override
  FutureEither<InvoiceEntity> createInvoice(InvoiceRequestEntity entity) async {
    try {
      final request = entity.toDto(status: 'pending');
      await apiService.createInvoice(request);
      final response = await apiService.createInvoice(request);
      if (response != null) {
        await _refreshCache();
        return Right(response.toEntity());
      } else {
        return Left(Failure('Failed to create invoice'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<List<InvoiceEntity>> getAllInvoices() async {
    try {
      if (await cacheService.isCacheValid()) {
        final cachedInvoices = await cacheService.getCachedInvoices();
        if (cachedInvoices != null) {
          return Right(cachedInvoices.map((e) => e.toEntity()).toList());
        }
      }

      final invoices = await apiService.getAllInvoices();
      await cacheService.cacheInvoices(invoices);
      return Right(invoices.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<InvoiceEntity> getInvoiceById(String id) async {
    try {
      final cachedInvoices = await cacheService.getCachedInvoices();
      if (cachedInvoices != null) {
        final invoice = cachedInvoices.firstWhere(
          (inv) => inv.id == id,
          orElse: () => throw Exception('Invoice not found'),
        );
        return Right(invoice.toEntity());
      }

      final invoice = await apiService.getInvoiceById(id);
      if (invoice != null) {
        await _refreshCache();
        return Right(invoice.toEntity());
      } else {
        return Left(Failure('Invoice not found'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<List<InvoiceEntity>> searchInvoices({
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
      return Right(results.map((e) => e.toEntity()).toList());
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
  FutureEither<InvoiceEntity> updateInvoice(
    String id,
    InvoiceRequestEntity request,
  ) async {
    try {
      final updated = await apiService.updateInvoice(id, request.toDto());
      if (updated != null) {
        await _refreshCache();
        return Right(updated.toEntity());
      } else {
        return Left(Failure('Failed to update invoice'));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  FutureEither<InvoiceEntity> markPaidInvoice(
    String id,
    InvoiceRequestEntity request,
  ) async {
    try {
      final updated = await apiService.updateInvoice(
        id,
        request.toDto(status: 'Paid'),
      );
      if (updated != null) {
        await _refreshCache();
        return Right(updated.toEntity());
      } else {
        return Left(Failure('Failed to update invoice status'));
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
