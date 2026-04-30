import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository.dart';
import 'package:invoice/features/auth/domain/entity/auth_token.dart';

class SignInUsecase {
  final AuthRepository repository;

  SignInUsecase(this.repository);

  FutureEither<AuthToken> call(String email, String password) {
    return repository.signIn(email, password);
  }
}
