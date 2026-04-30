

import '../models/auth_request_models.dart';
import '../models/auth_response_model.dart';

abstract class AuthRemoteDatasource {
  Future<AuthenticationResponse> register(RegisterRequest request);
  Future<AuthenticationResponse> signIn(SignInRequest request);
  Future<AuthenticationResponse> continueWithGoogle(GoogleSignInRequest request);
  Future<String?> getGoogleIdToken();
  Future<void> signOutGoogle();
}
