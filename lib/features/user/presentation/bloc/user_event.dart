part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getProfile() = _GetProfile;

  const factory UserEvent.updateProfile(UpdateProfileParams params) =
      _UpdateProfile;

  const factory UserEvent.changePassword(ChangePasswordParams params) =
      _ChangePassword;

  const factory UserEvent.deleteAccount() = _DeleteAccount;
}
