class UpdateProfileParams {
  final String name;
  final String? phone;
  final String? profileImageUrl;

  const UpdateProfileParams({
    required this.name,
    this.phone,
    this.profileImageUrl,
  });
}