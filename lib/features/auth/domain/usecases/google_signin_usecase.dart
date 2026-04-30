import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/domain/repository/auth_repository.dart';

import '../entity/auth_token.dart';

class GoogleSignInUsecase {
  final AuthRepository repository;

  GoogleSignInUsecase(this.repository);

  FutureEither<AuthToken> call() async {
    return repository.continueWithGoogle();
  }
}
