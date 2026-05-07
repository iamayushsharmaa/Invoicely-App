import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/change_password_usecase.dart';
import '../../domain/usecases/delete_account_usecase.dart';
import '../../domain/usecases/get_profile_usecase.dart';
import '../../domain/usecases/update_profile_usecase.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetProfileUseCase _getProfileUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;

  UserBloc({
    required GetProfileUseCase getProfileUseCase,
    required UpdateProfileUseCase updateProfileUseCase,
    required ChangePasswordUseCase changePasswordUseCase,
    required DeleteAccountUseCase deleteAccountUseCase,
  }) : _getProfileUseCase = getProfileUseCase,
       _updateProfileUseCase = updateProfileUseCase,
       _changePasswordUseCase = changePasswordUseCase,
       _deleteAccountUseCase = deleteAccountUseCase,
       super(const UserState.initial()) {
    on<_GetProfile>(_onGetProfile);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_ChangePassword>(_onChangePassword);
    on<_DeleteAccount>(_onDeleteAccount);
  }

  Future<void> _onGetProfile(_GetProfile event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final result = await _getProfileUseCase(NoParams());

    result.fold(
      (failure) => emit(UserState.error(_mapFailureMessage(failure))),
      (user) => emit(UserState.profileLoaded(user)),
    );
  }

  Future<void> _onUpdateProfile(
    _UpdateProfile event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());

    final result = await _updateProfileUseCase(event.params);

    result.fold(
      (failure) => emit(UserState.error(_mapFailureMessage(failure))),
      (updatedUser) => emit(UserState.profileLoaded(updatedUser)),
    );
  }

  Future<void> _onChangePassword(
    _ChangePassword event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());

    final result = await _changePasswordUseCase(event.params);

    result.fold(
      (failure) => emit(UserState.error(_mapFailureMessage(failure))),
      (_) => emit(const UserState.success('Password changed successfully')),
    );
  }

  Future<void> _onDeleteAccount(
    _DeleteAccount event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());

    final result = await _deleteAccountUseCase(NoParams());

    result.fold(
      (failure) => emit(UserState.error(_mapFailureMessage(failure))),
      (_) => emit(const UserState.success('Account deleted successfully')),
    );
  }

  String _mapFailureMessage(Failure failure) {
    return failure.message;
  }
}
