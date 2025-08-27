
class InvoiceItemEntity {
  final String description;
  final int quantity;
  final double price;
  final double total;

  const InvoiceItemEntity({
    required this.description,
    required this.quantity,
    required this.price,
    required this.total,
  });
}
