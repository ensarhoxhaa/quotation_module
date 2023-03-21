import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:quotation_module/models/quotation.dart';

@DataClass()
class QuotationOverviewState {
  /// Shorthand constructor
  QuotationOverviewState({
    required this.quotations,
  });

  final List<QuotationOverviewData> quotations;

  QuotationOverviewState.initial() : quotations = [];

  /// Returns a string with the properties of [QuotationOverviewState]
  @override
  String toString() {
    String value = 'QuotationOverviewState{<optimized out>}';
    assert(() {
      value = 'QuotationOverviewState@<$hexIdentity>{quotations: $quotations}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      quotations,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationOverviewState &&
            runtimeType == other.runtimeType &&
            deepEquality(quotations, other.quotations);
  }

  /// Creates a new instance of [QuotationOverviewState] with optional new values
  QuotationOverviewState copyWith({
    final List<QuotationOverviewData>? quotations,
  }) {
    return QuotationOverviewState(
      quotations: quotations ?? this.quotations,
    );
  }
}

@DataClass()
class QuotationOverviewData {
  /// Shorthand constructor
  QuotationOverviewData({
    required this.title,
    required this.amount,
    required this.company,
    required this.quotation,
  });

  final String title;
  final double amount;
  final String company;
  final Quotation quotation;

  /// Returns a string with the properties of [QuotationOverviewData]
  @override
  String toString() {
    String value = 'QuotationOverviewData{<optimized out>}';
    assert(() {
      value =
          'QuotationOverviewData@<$hexIdentity>{title: $title, amount: $amount, company: $company, quotation: $quotation}';
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
      quotation,
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
            company == other.company &&
            quotation == other.quotation;
  }

  /// Creates a new instance of [QuotationOverviewData] with optional new values
  QuotationOverviewData copyWith({
    final String? title,
    final double? amount,
    final String? company,
    final Quotation? quotation,
  }) {
    return QuotationOverviewData(
      title: title ?? this.title,
      amount: amount ?? this.amount,
      company: company ?? this.company,
      quotation: quotation ?? this.quotation,
    );
  }
}
