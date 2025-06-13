import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/data/repository/auth_repository.dart';
import 'package:invoice/features/auth/domain/entity/auth_token.dart';

class SignIn {
  final AuthRepository repository;

  SignIn(this.repository);

  FutureEither<AuthToken> call(String email, String password) {
    return repository.signIn(email, password);
  }
}
