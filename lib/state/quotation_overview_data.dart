
import 'package:data_class_plugin/data_class_plugin.dart';

@DataClass()
class QuotationOverviewData {
  /// Shorthand constructor
  QuotationOverviewData({
    required this.title,
    required this.amount,
    required this.company,
  });

  final String title;
  final double amount;
  final String company;

  /// Returns a string with the properties of [QuotationOverviewData]
  @override
  String toString() {
    String value = 'QuotationOverviewData{<optimized out>}';
    assert(() {
      value =
          'QuotationOverviewData@<$hexIdentity>{title: $title, amount: $amount, company: $company}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      title,
      amount,
      company,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationOverviewData &&
            runtimeType == other.runtimeType &&
            title == other.title &&
            amount == other.amount &&
            company == other.company;
  }

  /// Creates a new instance of [QuotationOverviewData] with optional new values
  QuotationOverviewData copyWith({
    final String? title,
    final double? amount,
    final String? company,
  }) {
    return QuotationOverviewData(
      title: title ?? this.title,
      amount: amount ?? this.amount,
      company: company ?? this.company,
    );
  }
}