import 'package:fpdart/src/either.dart';
import 'package:invoice/core/errors/failure.dart';
import 'package:invoice/features/invoice/data/datasources/local/invoice_local_datasource.dart';
import 'package:invoice/features/invoice/data/datasources/remote/invoice_remote_datasource.dart';
import 'package:invoice/features/invoice/domain/entities/create_invoice_params.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

import '../../../../core/network/api_exceptions.dart';
import '../../domain/repository/invoice_repository.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  final InvoiceRemoteDataSource _remote;
  final InvoiceLocalDataSource _local;

  InvoiceRepositoryImpl(this._remote, this._local);

  @override
  Future<Either<Failure, List<InvoiceEntity>>> getAllInvoices() async {
    try {
      final remoteInvoice = await _remote.getAllInvoices();

      await _local.cacheInvoices(remoteInvoice);
      return Right(remoteInvoice.map((e) => e.toEntity()).toList());
    } on ApiException catch (e) {
      return _getFallbackList();
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return _getFallbackList();
    }
  }

  @override
  Future<Either<Failure, InvoiceEntity>> getInvoiceById(
    String invoiceId,
  ) async {
    try {
      final remoteInvoice = await _remote.getInovoiceById(invoiceId);

      await _local.cacheInvoice(remoteInvoice);
      return Right(remoteInvoice.toEntity());
    } on ApiException catch (e) {
      return _getFallbackSingle(invoiceId, e);
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return _getFallbackSingle(invoiceId, null);
    }
  }

  @override
  Future<Either<Failure, List<InvoiceEntity>>> getInvoicesByClient(
    String clientId,
  ) async {
    try {
      final remoteInvoices = await _remote.getInvoicesByClient(clientId);
      await _local.cacheInvoices(remoteInvoices);
      return Right(remoteInvoices.map((e) => e.toEntity()).toList());
    } on ApiException catch (e) {
      return _getFallbackByClient(clientId);
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return _getFallbackByClient(clientId);
    }
  }

  @override
  Future<Either<Failure, InvoiceEntity>> createInvoice(
    CreateInvoiceParams params,
  ) async {
    try {
      final remote = await _remote.createInvoice(params);
      await _local.cacheInvoice(remote);
      return Right(remote.toEntity());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteInvoice(String invoiceId) async {
    try {
      await _remote.deleteInvoice(invoiceId);
      await _local.deleteInvoiceFromCache(invoiceId);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, InvoiceEntity>> markAsPaid(String invoiceId) async {
    try {
      final remote = await _remote.markAsPaid(invoiceId);
      await _local.cacheInvoice(remote);
      return Right(remote.toEntity());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<InvoiceEntity>>> searchInvoices({
    String? invoiceNumber,
    String? clientName,
    int page = 0,
    int size = 10,
  }) async {
    try {
      final remoteInvoices = await _remote.searchInvoices(
        invoiceNumber: invoiceNumber,
        clientName: clientName,
        page: page,
        size: size,
      );
      return Right(remoteInvoices.map((e) => e.toEntity()).toList());
    } on ApiException catch (e) {
      return _getFallbackSearch(
        invoiceNumber: invoiceNumber,
        clientName: clientName,
      );
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return _getFallbackSearch(
        invoiceNumber: invoiceNumber,
        clientName: clientName,
      );
    }
  }

  @override
  Future<Either<Failure, InvoiceEntity>> updateInvoice(
    String invoiceId,
    CreateInvoiceParams params,
  ) async {
    try {
      final remote = await _remote.updateInvoice(invoiceId, params);
      await _local.cacheInvoice(remote);
      return Right(remote.toEntity());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  //fallbacks

  Future<Either<Failure, List<InvoiceEntity>>> _getFallbackList() async {
    try {
      final cached = await _local.getCachedInvoices();
      if (cached.isEmpty) {
        return const Left(
          ServerFailure('No internet connection and no cached data available.'),
        );
      }
      return Right(cached.map((e) => e.toEntity()).toList());
    } on CacheFailure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, InvoiceEntity>> _getFallbackSingle(
    String invoiceId,
    ApiException? e,
  ) async {
    try {
      final cached = await _local.getCachedInvoiceById(invoiceId);
      if (cached == null) {
        return Left(ServerFailure(e?.message ?? 'Invoice not found in cache.'));
      }
      return Right(cached.toEntity());
    } on CacheFailure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, List<InvoiceEntity>>> _getFallbackByClient(
    String clientId,
  ) async {
    try {
      final cached = await _local.getCachedInvoices();
      final filtered = cached
          .where((inv) => inv.clientId == clientId)
          .map((e) => e.toEntity())
          .toList();
      if (filtered.isEmpty) {
        return const Left(
          ServerFailure('No internet connection and no cached data available.'),
        );
      }
      return Right(filtered);
    } on CacheFailure catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, List<InvoiceEntity>>> _getFallbackSearch({
    String? invoiceNumber,
    String? clientName,
  }) async {
    try {
      final cached = await _local.getCachedInvoices();
      final filtered = cached.where((inv) {
        final matchesNumber =
            invoiceNumber == null ||
            inv.invoiceNumber.toLowerCase().contains(
              invoiceNumber.toLowerCase(),
            );
        final matchesClient =
            clientName == null ||
            inv.billingTo.toLowerCase().contains(clientName.toLowerCase());
        return matchesNumber && matchesClient;
      }).toList();
      return Right(filtered.map((e) => e.toEntity()).toList());
    } on CacheFailure catch (e) {
      return Left(e);
    }
  }
}
