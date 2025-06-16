import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:invoice/features/auth/data/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(AuthInitial()) {
    on<CheckAuthStatus>((event, emit) async {});
    on<ContinueWithGoogleEvent>(_continueWithGoogle);
    on<SignInEvent>(_signIn);
    on<SignUpEvent>(_signUp);
    on<SignOutEvent>(_onSignOut);
  }

  FutureOr<void> _signIn(SignInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await repository.signIn(event.email, event.password);
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (token) => Authenticated(token.token),
    );
  }

  FutureOr<void> _signUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    final result = await repository.register(
      event.name,
      event.email,
      event.password,
    );
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (token) => Authenticated(token.token),
    );
  }

  Future<void> _onSignOut(SignOutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await repository.signOut();
    emit(Unauthenticated());
  }

  FutureOr<void> _continueWithGoogle(
    ContinueWithGoogleEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await repository.continueWithGoogle();
    result.fold(
      (failure) => emit(AuthError(message: failure.message)),
      (token) => Authenticated(token.token),
    );
  }
}
