class NewClientParams {
  final String name;
  final String email;
  final String? phone;
  final String? address;

  const NewClientParams({
    required this.name,
    required this.email,
    this.phone,
    this.address,
  });
}