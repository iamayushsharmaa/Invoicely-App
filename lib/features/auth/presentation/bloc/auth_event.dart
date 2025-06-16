part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckAuthStatus extends AuthEvent {}

class SignInEvent extends AuthEvent {
  final String email;
  final String password;

  SignInEvent(this.email, this.password);

  @override
  List<Object> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  final String name;
  final String email;
  final String password;

  SignUpEvent(this.email, this.password, this.name);

  @override
  List<Object> get props => [name, email, password];
}

class ContinueWithGoogleEvent extends AuthEvent {}

class SignOutEvent extends AuthEvent {}
