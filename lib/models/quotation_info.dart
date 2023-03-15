import 'line_item.dart';

class QuotationInfo {
  /// Shorthand constructor
  QuotationInfo({
    required this.title,
    required this.description,
    required this.lineItems,
  });

  final String title;
  final String description;
  final List<LineItem> lineItems;
}