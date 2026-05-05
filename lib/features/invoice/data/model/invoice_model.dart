import 'package:hive/hive.dart';

import '../../domain/entities/invoice_enitity.dart';
import 'invoice_item_model.dart';

part 'invoice_model.g.dart';

@HiveType(typeId: 3)
class InvoiceModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String clientId;

  @HiveField(2)
  final String invoiceNumber;

  @HiveField(3)
  final DateTime invoiceDate;

  @HiveField(4)
  final DateTime dueDate;

  @HiveField(5)
  final String billingFrom;

  @HiveField(6)
  final String billingTo;

  @HiveField(7)
  final String? notes;

  @HiveField(8)
  final String status;

  @HiveField(9)
  final double subTotal;

  @HiveField(10)
  final double discount;

  @HiveField(11)
  final double tax;

  @HiveField(12)
  final double totalAmount;

  @HiveField(13)
  final String? logoUrl;

  @HiveField(14)
  final String currency;

  @HiveField(15)
  final bool paid;

  @HiveField(16)
  final DateTime? paymentDate;

  @HiveField(17)
  final List<InvoiceItemModel> items;

  InvoiceModel({
    required this.id,
    required this.clientId,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.dueDate,
    required this.billingFrom,
    required this.billingTo,
    this.notes,
    required this.status,
    required this.subTotal,
    required this.discount,
    required this.tax,
    required this.totalAmount,
    this.logoUrl,
    required this.currency,
    required this.paid,
    this.paymentDate,
    required this.items,
  });

  factory InvoiceModel.fromJson(Map<String, dynamic> json) {
    return InvoiceModel(
      id: json['id'] as String,
      clientId: json['clientId'] as String,
      invoiceNumber: json['invoiceNumber'] as String,
      invoiceDate: DateTime.parse(json['invoiceDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      billingFrom: json['billingFrom'] as String,
      billingTo: json['billingTo'] as String,
      notes: json['notes'] as String?,
      status: json['status'] as String,
      subTotal: (json['subTotal'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      logoUrl: json['logoUrl'] as String?,
      currency: json['currency'] as String,
      paid: json['paid'] as bool? ?? false,
      paymentDate: json['paymentDate'] != null
          ? DateTime.parse(json['paymentDate'] as String)
          : null,
      items: (json['items'] as List<dynamic>? ?? [])
          .map((e) => InvoiceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'clientId': clientId,
    'invoiceNumber': invoiceNumber,
    'invoiceDate': invoiceDate.toIso8601String(),
    'dueDate': dueDate.toIso8601String(),
    'billingFrom': billingFrom,
    'billingTo': billingTo,
    'notes': notes,
    'status': status,
    'subTotal': subTotal,
    'discount': discount,
    'tax': tax,
    'totalAmount': totalAmount,
    'logoUrl': logoUrl,
    'currency': currency,
    'paid': paid,
    'paymentDate': paymentDate?.toIso8601String(),
    'items': items.map((e) => e.toJson()).toList(),
  };

  InvoiceEntity toEntity() => InvoiceEntity(
    id: id,
    clientId: clientId,
    invoiceNumber: invoiceNumber,
    invoiceDate: invoiceDate,
    dueDate: dueDate,
    billingFrom: billingFrom,
    billingTo: billingTo,
    notes: notes,
    status: status,
    subTotal: subTotal,
    discount: discount,
    tax: tax,
    totalAmount: totalAmount,
    logoUrl: logoUrl,
    currency: currency,
    paid: paid,
    paymentDate: paymentDate,
    items: items.map((e) => e.toEntity()).toList(),
  );

  factory InvoiceModel.fromEntity(InvoiceEntity entity) {
    return InvoiceModel(
      id: entity.id,
      clientId: entity.clientId,
      invoiceNumber: entity.invoiceNumber,
      invoiceDate: entity.invoiceDate,
      dueDate: entity.dueDate,
      billingFrom: entity.billingFrom,
      billingTo: entity.billingTo,
      notes: entity.notes,
      status: entity.status,
      subTotal: entity.subTotal,
      discount: entity.discount,
      tax: entity.tax,
      totalAmount: entity.totalAmount,
      logoUrl: entity.logoUrl,
      currency: entity.currency,
      paid: entity.paid,
      paymentDate: entity.paymentDate,
      items: entity.items.map((e) => InvoiceItemModel.fromEntity(e)).toList(),
    );
  }
}
