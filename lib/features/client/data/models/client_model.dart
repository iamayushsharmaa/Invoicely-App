class ClientModel {
  final String name;
  final String email;
  final String phoneNumber;
  final String address;

  ClientModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'phoneNumber': this.phoneNumber,
      'address': this.address,
    };
  }

  factory ClientModel.fromMap(Map<String, dynamic> map) {
    return ClientModel(
      name: map['name'] as String,
      email: map['email'] as String,
      phoneNumber: map['phoneNumber'] as String,
      address: map['address'] as String,
    );
  }
}
