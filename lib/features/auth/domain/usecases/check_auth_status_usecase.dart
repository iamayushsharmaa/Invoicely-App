import 'package:invoice/core/type_def.dart';

import '../entity/auth_token.dart';
import '../repository/auth_repository.dart';

class CheckAuthStatusUsecase {
  final AuthRepository repository;

  CheckAuthStatusUsecase(this.repository);

  FutureEither<AuthToken> call() async {
    return await repository.checkAuthStatus();
  }
}
