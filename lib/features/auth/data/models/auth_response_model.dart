class AuthenticationResponse {
  final String? token;
  final String? error;

  AuthenticationResponse({this.token, this.error});

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) {
    return AuthenticationResponse(
      token: json['token'],
      error: json['error'],
    );
  }
}