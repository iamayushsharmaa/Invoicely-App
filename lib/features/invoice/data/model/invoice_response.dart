
class InvoiceResponse {
  final String id;
  final String clientId;
  final String invoiceNumber;
  final DateTime invoiceDate;
  final DateTime dueDate;
  final String billingFrom;
  final String billingTo;
  final String? notes;
  final String status;
  final double subTotal;
  final double discount;
  final double tax;
  final double totalAmount;
  final String? logoUrl;
  final String currency;
  final bool paid;
  final DateTime? paymentDate;
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

