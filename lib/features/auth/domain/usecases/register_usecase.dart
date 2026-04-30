import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository.dart';

import '../entity/auth_token.dart';

class RegisterUsecase {
  final AuthRepository repository;

  RegisterUsecase(this.repository);

  FutureEither<AuthToken> call(String name, String email, String password) {
    return repository.register(name, email, password);
  }
}
