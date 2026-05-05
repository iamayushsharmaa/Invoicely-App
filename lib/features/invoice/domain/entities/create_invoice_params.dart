import 'invoice_item_params.dart';

class CreateInvoiceParams {
  final String clientId;
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
  final List<InvoiceItemParams> items;
  final double subTotal;
  final double totalAmount;

  const CreateInvoiceParams({
    required this.clientId,
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
}
