import 'package:invoice/features/user/domain/usecases/change_password_usecase.dart';
import 'package:invoice/features/user/domain/usecases/update_profile_usecase.dart';

import '../models/user_model.dart';

abstract class UserRemoteDatasource {
  Future<UserModel> getProfile();

  Future<UserModel> updateProfile(UpdateProfileParams params);

  Future<void> changePassword(ChangePasswordParams params);

  Future<void> deleteAccount();
}
