part of 'auth_bloc.dart';

abstract class AuthEvent {}

class CheckAuthStatus extends AuthEvent {}

class SignIn extends AuthEvent {
  final String email;
  final String password;
  SignIn(this.email, this.password);
}

class SignUp extends AuthEvent {
  final String name;
  final String email;
  final String password;
  SignUp(this.email, this.password, this.name);
}

class SignOut extends AuthEvent {}