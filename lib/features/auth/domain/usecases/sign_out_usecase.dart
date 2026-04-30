import 'package:invoice/core/type_def.dart';

import '../repository/auth_repository.dart';

class SignOutUsecase {
  final AuthRepository repository;

  SignOutUsecase(this.repository);

  FutureVoid call() async {
    return await repository.signOut();
  }
}
