import 'package:fpdart/src/either.dart';
import 'package:invoice/core/errors/failure.dart';
import 'package:invoice/core/network/api_exceptions.dart';
import 'package:invoice/features/client/data/datasources/client_local_datasource.dart';
import 'package:invoice/features/client/data/datasources/client_remote_datasource.dart';
import 'package:invoice/features/client/domain/entities/client_enitity.dart';
import 'package:invoice/features/client/domain/params/client_params.dart';
import 'package:invoice/features/client/domain/repository/client_repository.dart';

class ClientRepositoryImpl implements ClientRepository {
  final ClientRemoteDatasource _remote;
  final ClientLocalDatasource _local;

  ClientRepositoryImpl({
    required ClientRemoteDatasource remote,
    required ClientLocalDatasource local,
  }) : _remote = remote,
       _local = local;

  @override
  Future<Either<Failure, ClientEntity>> createClient(
    CreateClientParams params,
  ) async {
    try {
      final remote = await _remote.createClient(params);
      await _local.cacheClient(remote);
      return Right(remote.toEntity());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to create client'));
    }
  }

  @override
  Future<Either<Failure, List<ClientEntity>>> getAllClients() async {
    try {
      final response = await _remote.getAllClients();
      await _local.cacheClients(response);
      return Right(response.map((e) => e.toEntity()).toList());
    } on ApiException catch (e) {
      return _getFallbackList();
    } on CacheFailure catch (e) {
      return Left(e);
    } catch (e) {
      return _getFallbackList();
    }
  }

  @override
  Future<Either<Failure, void>> deleteClient(String clientId) async {
    try {
      await _remote.deleteClient(clientId);
      await _local.deleteClientFromCache(clientId);
      return const Right(null);
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to delete client'));
    }
  }

  @override
  Future<Either<Failure, ClientEntity>> updateClient(
    UpdateClientParams params,
  ) async {
    try {
      final remote = await _remote.updateClient(params);
      await _local.cacheClient(remote);
      return Right(remote.toEntity());
    } on ApiException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Failed to update client'));
    }
  }

  Future<Either<Failure, List<ClientEntity>>> _getFallbackList() async {
    try {
      final cached = await _local.getCachedClients();
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
}
