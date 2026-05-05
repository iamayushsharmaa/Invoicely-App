class InvoiceItemParams {
  final String description;
  final int quantity;
  final double price;

  const InvoiceItemParams({
    required this.description,
    required this.quantity,
    required this.price,
  });
}