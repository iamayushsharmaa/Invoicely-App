
import 'package:invoice/core/type_def.dart';
import 'package:invoice/features/auth/data/models/auth_response_model.dart';
import 'package:invoice/features/auth/domain/entity/auth_token.dart';

abstract class AuthRepository{
  FutureEither<AuthToken> checkAuthStatus();
  FutureEither<AuthToken> register(String name, String email, String password);
  FutureEither<AuthToken> signIn(String email, String password);
  FutureEither<AuthToken> continueWithGoogle();
  FutureEither<void> signOut();
}