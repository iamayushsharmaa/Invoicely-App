import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:invoice/features/auth/data/datasource/auth_local_datasource.dart';

class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  final FlutterSecureStorage _storage;

  static const _tokenKey = 'access_token';

  AuthLocalDatasourceImpl(this._storage);

  @override
  Future<void> clearToken() => _storage.delete(key: _tokenKey);

  @override
  Future<String?> getToken() => _storage.read(key: _tokenKey);

  @override
  Future<void> saveToken(String token) =>
      _storage.write(key: _tokenKey, value: token);
}
