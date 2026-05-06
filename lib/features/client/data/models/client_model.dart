import 'package:hive/hive.dart';

import '../../domain/entities/client_enitity.dart';

part 'client_model.g.dart';

@HiveType(typeId: 4)
class ClientModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String email;

  @HiveField(3)
  final String phone;

  @HiveField(4)
  final String address;

  ClientModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });

  factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    address: json['address'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'phone': phone,
    'address': address,
  };

  ClientEntity toEntity() => ClientEntity(
    id: id,
    name: name,
    email: email,
    phone: phone,
    address: address,
  );

  factory ClientModel.fromEntity(ClientEntity entity) => ClientModel(
    id: entity.id,
    name: entity.name,
    email: entity.email,
    phone: entity.phone,
    address: entity.address,
  );
}
