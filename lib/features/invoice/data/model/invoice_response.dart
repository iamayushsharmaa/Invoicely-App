
import 'package:hive/hive.dart';
part 'invoice_response.g.dart';

@HiveType(typeId: 0)
class InvoiceResponse {

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
  final List<InvoiceItemResponse> items;

  InvoiceResponse({
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

  factory InvoiceResponse.fromJson(Map<String, dynamic> json) {
    return InvoiceResponse(
      id: json['id'],
      clientId: json['clientId'],
      invoiceNumber: json['invoiceNumber'],
      invoiceDate: DateTime.parse(json['invoiceDate']),
      dueDate: DateTime.parse(json['dueDate']),
      billingFrom: json['billingFrom'],
      billingTo: json['billingTo'],
      notes: json['notes'],
      status: json['status'],
      subTotal: (json['subTotal'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      logoUrl: json['logoUrl'],
      currency: json['currency'],
      paid: json['paid'],
      paymentDate: json['paymentDate'] != null
          ? DateTime.parse(json['paymentDate'])
          : null,
      items: (json['items'] as List)
          .map((item) => InvoiceItemResponse.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
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
      'items': items.map((item) => item.toJson()).toList(),
    };
  }
}

class InvoiceItemResponse {
  final String description;
  final int quantity;
  final double price;
  final double total;

  InvoiceItemResponse({
    required this.description,
    required this.quantity,
    required this.price,
    required this.total,
  });

  factory InvoiceItemResponse.fromJson(Map<String, dynamic> json) {
    return InvoiceItemResponse(
      description: json['description'],
      quantity: json['quantity'],
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'quantity': quantity,
      'price': price,
      'total': total,
    };
  }
}

