import 'customer_info.dart';
import 'quotation_info.dart';

class Quotation {
  /// Shorthand constructor
  Quotation({
    required this.costumerInfo,
    required this.quotationInfo,
    required this.totalPrice,
    required this.photos,
  });

  final CustomerInfo costumerInfo;
  final QuotationInfo quotationInfo;
  final double totalPrice;
  final List photos;
}