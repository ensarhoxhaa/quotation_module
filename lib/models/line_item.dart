class LineItem {
  /// Shorthand constructor
  LineItem({
    required this.title,
    required this.price,
    required this.quantity,
    required this.totalPrice,
  });

  final String title;
  final String price;
  final double quantity;
  final double totalPrice;
}