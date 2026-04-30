import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:invoice/features/auth/domain/usecases/check_auth_status_usecase.dart';
import 'package:invoice/features/auth/domain/usecases/google_signin_usecase.dart';
import 'package:invoice/features/auth/domain/usecases/register_usecase.dart';
import 'package:invoice/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:invoice/features/auth/domain/usecases/sign_out_usecase.dart';

import '../../domain/entity/user_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final CheckAuthStatusUsecase _checkAuthStatus;
  final SignInUsecase _signIn;
  final RegisterUsecase _register;
  final GoogleSignInUsecase _googleSignIn;
  final SignOutUsecase _signOut;

  AuthBloc({
    required CheckAuthStatusUsecase checkAuthStatus,
    required SignInUsecase signIn,
    required RegisterUsecase register,
    required GoogleSignInUsecase googleSignIn,
    required SignOutUsecase signOut,
  }) : _checkAuthStatus = checkAuthStatus,
       _signIn = signIn,
       _register = register,
       _googleSignIn = googleSignIn,
       _signOut = signOut,
       super(AuthInitial()) {
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<SignInEvent>(_onSignIn);
    on<SignUpEvent>(_onSignUp);
    on<ContinueWithGoogleEvent>(_onContinueWithGoogle);
    on<SignOutEvent>(_onSignOut);
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatusEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _checkAuthStatus();
    result.fold(
      (failure) => emit(Unauthenticated()),
      (authToken) =>
          emit(Authenticated(token: authToken.token, user: authToken.user)),
    );
  }

  Future<void> _onSignIn(SignInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await _signIn(event.email, event.password);
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (authToken) =>
          emit(Authenticated(token: authToken.token, user: authToken.user)),
    );
  }

  Future<void> _onSignUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await _register(event.name, event.email, event.password);
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (authToken) =>
          emit(Authenticated(token: authToken.token, user: authToken.user)),
    );
  }

  Future<void> _onContinueWithGoogle(
    ContinueWithGoogleEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await _googleSignIn();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (authToken) =>
          emit(Authenticated(token: authToken.token, user: authToken.user)),
    );
  }

  Future<void> _onSignOut(SignOutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await _signOut();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (_) => emit(Unauthenticated()),
    );
  }
}
