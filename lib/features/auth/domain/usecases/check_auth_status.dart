import 'package:invoice/core/type_def.dart';

import '../entity/auth_token.dart';
import '../repository/auth_repository.dart';

class CheckAuthStatus {
  final AuthRepository repository;

  CheckAuthStatus(this.repository);

  FutureEither<AuthToken> call() async {
    return await repository.checkAuthStatus();
  }
}
