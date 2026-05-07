part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;

  const factory UserState.loading() = _Loading;

  const factory UserState.profileLoaded(UserEntity user) = _ProfileLoaded;

  const factory UserState.success(String message) = _Success;

  const factory UserState.error(String message) = _Error;
}
