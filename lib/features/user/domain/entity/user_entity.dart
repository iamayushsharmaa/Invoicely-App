class UserEntity {
  final String id;
  final String email;
  final String name;
  final String? phone;
  final String? profileImageUrl;

  const UserEntity({
    required this.id,
    required this.email,
    required this.name,
    this.phone,
    this.profileImageUrl,
  });
}
