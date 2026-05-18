import '../../domain/entities/change_password_params.dart';
import '../../domain/entities/update_user_params.dart';
import '../models/user_model.dart';

abstract class UserRemoteDatasource {
  Future<UserModel> getProfile();

  Future<UserModel> updateProfile(UpdateProfileParams params);

  Future<void> changePassword(ChangePasswordParams params);

  Future<void> deleteAccount();
}
