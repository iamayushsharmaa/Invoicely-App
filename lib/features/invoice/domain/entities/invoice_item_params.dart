class InvoiceItemParams {
  final String description;
  final int quantity;
  final double price;
  final double tax;
  final double total;

  const InvoiceItemParams({
    required this.description,
    required this.quantity,
    required this.price,
    required this.tax,
    required this.total,
  });

  Map<String, dynamic> toJson() => {
    'description': description,
    'quantity': quantity,
    'price': price,
    'tax': tax,
    'total': total,
  };
}