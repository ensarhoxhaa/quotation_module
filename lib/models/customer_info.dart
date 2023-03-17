import 'package:data_class_plugin/data_class_plugin.dart';

class CustomerInfo {
  /// Shorthand constructor
  CustomerInfo({
    required this.companyName,
    required this.companyAddress,
    required this.companyEmail,
    required this.vatNumber,
  });

  final String companyName;
  final String companyAddress;
  final String companyEmail;
  final int vatNumber;
}