import 'package:dio/dio.dart';
import 'package:invoice/features/user/data/datasources/user_remote_datasource.dart';
import 'package:invoice/features/user/domain/usecases/change_password_usecase.dart';
import 'package:invoice/features/user/domain/usecases/update_profile_usecase.dart';

import '../models/user_model.dart';

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final Dio _dio;

  UserRemoteDatasourceImpl(this._dio);

  @override
  Future<UserModel> getProfile() async {
    final response = await _dio.get('/user/profile');
    return UserModel.fromJson(response.data);
  }

  @override
  Future<UserModel> updateProfile(UpdateProfileParams params) async {
    final response = await _dio.put(
      '/user/profile',
      data: {
        'name': params.name,
        'phone': params.phone,
        'profileImageUrl': params.profileImageUrl,
      },
    );

    return UserModel.fromJson(response.data);
  }

  @override
  Future<void> changePassword(ChangePasswordParams params) async {
    await _dio.post(
      '/user/change-password',
      data: {
        'currentPassword': params.currentPassword,
        'newPassword': params.newPassword,
      },
    );
  }

  @override
  Future<void> deleteAccount() async {
    await _dio.delete('/user/delete-account');
  }
}
