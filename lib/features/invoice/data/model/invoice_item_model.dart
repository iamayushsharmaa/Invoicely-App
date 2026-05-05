import 'package:hive/hive.dart';

import '../../domain/entities/invoice_item_entity.dart';

part 'invoice_item_model.g.dart';

@HiveType(typeId: 2)
class InvoiceItemModel extends HiveObject {
  @HiveField(0)
  final String description;

  @HiveField(1)
  final int quantity;

  @HiveField(2)
  final double price;

  @HiveField(3)
  final double total;

  InvoiceItemModel({
    required this.description,
    required this.quantity,
    required this.price,
    required this.total,
  });

  factory InvoiceItemModel.fromJson(Map<String, dynamic> json) {
    return InvoiceItemModel(
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
    'description': description,
    'quantity': quantity,
    'price': price,
    'total': total,
  };

  InvoiceItemEntity toEntity() => InvoiceItemEntity(
    description: description,
    quantity: quantity,
    price: price,
    total: total,
  );

  factory InvoiceItemModel.fromEntity(InvoiceItemEntity entity) {
    return InvoiceItemModel(
      description: entity.description,
      quantity: entity.quantity,
      price: entity.price,
      total: entity.total,
    );
  }
}
