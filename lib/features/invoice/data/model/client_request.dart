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

  Map<String, dynamic> toJson() {
    return {'name': name, 'email': email, 'phone': phone, 'address': address};
  }

  factory ClientRequest.fromJson(Map<String, dynamic> json) {
    return ClientRequest(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'],
    );
  }
}
