import 'package:equatable/equatable.dart';

import 'invoice_item_entity.dart';

class InvoiceEntity extends Equatable {
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
  final List<InvoiceItemEntity> items;

  const InvoiceEntity({
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

  @override
  List<Object?> get props => [
    id,
    clientId,
    invoiceNumber,
    invoiceDate,
    dueDate,
    billingFrom,
    billingTo,
    notes,
    status,
    subTotal,
    discount,
    tax,
    totalAmount,
    logoUrl,
    currency,
    paid,
    paymentDate,
    items,
  ];
}
