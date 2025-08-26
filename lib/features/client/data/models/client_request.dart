class ClientRequest {
  final String name;
  final String email;
  final String phone;
  final String address;

  ClientRequest({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'address': address,
  };
}
