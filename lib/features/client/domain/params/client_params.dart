class CreateClientParams {
  final String name;
  final String email;
  final String phone;
  final String address;

  const CreateClientParams({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });
}

class UpdateClientParams {
  final String clientId;
  final String name;
  final String email;
  final String phone;
  final String address;

  const UpdateClientParams({
    required this.clientId,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });
}
