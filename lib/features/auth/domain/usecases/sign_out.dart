import 'package:invoice/core/type_def.dart';

import '../repository/auth_repository.dart';

class SignOut {
  final AuthRepository repository;

  SignOut(this.repository);

  FutureVoid call() async {
    return await repository.signOut();
  }
}
