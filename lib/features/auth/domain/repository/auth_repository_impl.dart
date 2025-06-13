import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/data/repository/auth_repository.dart';
import 'package:invoice/features/auth/domain/entity/auth_token.dart';

class AuthRepositoryImpl implements AuthRepository{
  @override
  FutureEither<AuthToken> chechAuthStatus() {
    // TODO: implement chechAuthStatus
    throw UnimplementedError();
  }

  @override
  FutureEither<AuthToken> continueWithGoogle() {
    // TODO: implement continueWithGoogle
    throw UnimplementedError();
  }

  @override
  FutureEither<AuthToken> register(String name, String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  FutureEither<AuthToken> signIn(String email, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  FutureEither<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

}