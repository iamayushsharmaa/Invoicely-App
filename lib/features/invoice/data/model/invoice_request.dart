import 'client_request.dart';

class InvoiceRequest {
  final String clientId;
  final ClientRequest? client;
  final String invoiceNumber;
  final DateTime invoiceDate;
  final DateTime dueDate;
  final String billingFrom;
  final String billingTo;
  final String? notes;
  final String status;
  final double discount;
  final double tax;
  final String currency;
  final String? logoUrl;
  final List<InvoiceItem> items;
  final double subTotal;
  final double totalAmount;

  InvoiceRequest({
    required this.clientId,
    this.client,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.dueDate,
    required this.billingFrom,
    required this.billingTo,
    this.notes,
    required this.status,
    required this.discount,
    required this.tax,
    required this.currency,
    this.logoUrl,
    required this.items,
    required this.subTotal,
    required this.totalAmount,
  });

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'client': client?.toJson(),
      'invoiceNumber': invoiceNumber,
      'invoiceDate': invoiceDate.toIso8601String(),
      'dueDate': dueDate.toIso8601String(),
      'billingFrom': billingFrom,
      'billingTo': billingTo,
      'notes': notes,
      'status': status,
      'discount': discount,
      'tax': tax,
      'currency': currency,
      'logoUrl': logoUrl,
      'items': items.map((item) => item.toJson()).toList(),
      'subTotal': subTotal,
      'totalAmount': totalAmount,
    };
  }

  factory InvoiceRequest.fromJson(Map<String, dynamic> json) {
    return InvoiceRequest(
      clientId: json['clientId'],
      client: json['client'] != null
          ? ClientRequest.fromJson(json['client'])
          : null,
      invoiceNumber: json['invoiceNumber'],
      invoiceDate: DateTime.parse(json['invoiceDate']),
      dueDate: DateTime.parse(json['dueDate']),
      billingFrom: json['billingFrom'],
      billingTo: json['billingTo'],
      notes: json['notes'],
      status: json['status'],
      discount: (json['discount'] as num).toDouble(),
      tax: (json['tax'] as num).toDouble(),
      currency: json['currency'],
      logoUrl: json['logoUrl'],
      items: (json['items'] as List)
          .map((item) => InvoiceItem.fromJson(item))
          .toList(),
      subTotal: (json['subTotal'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
    );
  }
}


class InvoiceItem {
  final String description;
  final int quantity;
  final double price;
  final double total;

  InvoiceItem({
    required this.description,
    required this.quantity,
    required this.price,
    required this.total,
  });

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'quantity': quantity,
      'price': price,
      'total': total,
    };
  }

  factory InvoiceItem.fromJson(Map<String, dynamic> json) {
    return InvoiceItem(
      description: json['description'],
      quantity: json['quantity'],
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );
  }
}