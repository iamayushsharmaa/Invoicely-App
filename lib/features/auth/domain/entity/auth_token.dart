import 'package:invoice/features/auth/domain/entity/user_model.dart';

class AuthToken {
  final String token;
  final User? user;

  AuthToken(this.token, {this.user});
}
