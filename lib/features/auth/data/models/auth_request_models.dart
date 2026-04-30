class SignInRequest {
  final String email;
  final String password;

  SignInRequest({required this.email, required this.password});

  Map<String, dynamic> toMap() => {'email': email, 'password': password};
}

class RegisterRequest {
  final String name;
  final String email;
  final String password;

  RegisterRequest({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() => {
    'name': name,
    'email': email,
    'password': password,
  };
}

class GoogleSignInRequest {
  final String token;

  GoogleSignInRequest({required this.token});

  Map<String, dynamic> toJson() => {'token': token};
}
