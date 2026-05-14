class InvoiceItemUiModel {
  final String name;
  final double price;
  final int quantity;
  final double tax;

  const InvoiceItemUiModel({
    required this.name,
    required this.price,
    required this.quantity,
    required this.tax,
  });

  double get subtotal => price * quantity;

  double get total {
    return subtotal + (subtotal * tax / 100);
  }
}