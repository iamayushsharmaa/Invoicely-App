import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/data/repository/auth_repository.dart';

import '../entity/auth_token.dart';

class GoogleSignIn {
  final AuthRepository repository;

  GoogleSignIn(this.repository);

  FutureEither<AuthToken> call() async {
    return repository.continueWithGoogle();
  }
}
