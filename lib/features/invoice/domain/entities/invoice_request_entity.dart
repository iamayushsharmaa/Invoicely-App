import 'invoice_item_entity.dart';

class InvoiceRequestEntity {
  final String clientId;
  final String invoiceNumber;
  final DateTime invoiceDate;
  final DateTime dueDate;
  final String billingFrom;
  final String billingTo;
  final String? notes;
  final double discount;
  final double tax;
  final String currency;
  final String? logoUrl;
  final List<InvoiceItemEntity> items;

  const InvoiceRequestEntity({
    required this.clientId,
    required this.invoiceNumber,
    required this.invoiceDate,
    required this.dueDate,
    required this.billingFrom,
    required this.billingTo,
    this.notes,
    required this.discount,
    required this.tax,
    required this.currency,
    this.logoUrl,
    required this.items,
  });
}
