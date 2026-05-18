import 'package:dio/dio.dart';
import 'package:invoice/features/user/data/datasources/user_remote_datasource.dart';

import '../../../../core/network/api_error_handling.dart';
import '../../domain/entities/change_password_params.dart';
import '../../domain/entities/update_user_params.dart';
import '../models/user_model.dart';

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final Dio _dio;

  UserRemoteDatasourceImpl(this._dio);

  @override
  Future<UserModel> getProfile() async {
    try {
      final response = await _dio.get('/api/v1/user/profile');
      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<UserModel> updateProfile(UpdateProfileParams params) async {
    try {
      final response = await _dio.put(
        '/api/v1/user/update-profile',
        data: {
          'name': params.name,
          if (params.phone != null) 'phone': params.phone,
          if (params.profileImageUrl != null)
            'profileImageUrl': params.profileImageUrl,
        },
      );
      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<void> changePassword(ChangePasswordParams params) async {
    try {
      await _dio.post(
        '/api/v1/user/change-password',
        data: {
          'currentPassword': params.currentPassword,
          'newPassword': params.newPassword,
        },
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await _dio.delete('/api/v1/user/delete-account');
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
