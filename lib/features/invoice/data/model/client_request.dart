class ClientRequest {
  final String name;
  final String email;
  final String address;

  ClientRequest({
    required this.name,
    required this.email,
    required this.address,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'address': address,
    };
  }

  factory ClientRequest.fromJson(Map<String, dynamic> json) {
    return ClientRequest(
      name: json['name'],
      email: json['email'],
      address: json['address'],
    );
  }
}