import 'package:equatable/equatable.dart';

class ClientEntity extends Equatable {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String address;

  const ClientEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });

  @override
  List<Object?> get props => [id, name, email, phone, address];
}
