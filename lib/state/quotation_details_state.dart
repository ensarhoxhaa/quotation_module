import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:quotation_module/models/quotation.dart';

@DataClass()
class QuotationDetailsState {
  /// Shorthand constructor
  QuotationDetailsState({
    required this.quotation,
  });

  final Quotation? quotation;

  QuotationDetailsState.initial() : quotation = null;

  /// Returns a string with the properties of [QuotationDetailsState]
  @override
  String toString() {
    String value = 'QuotationDetailsState{<optimized out>}';
    assert(() {
      value = 'QuotationDetailsState@<$hexIdentity>{quotation: $quotation}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      quotation,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationDetailsState &&
            runtimeType == other.runtimeType &&
            quotation == other.quotation;
  }

  /// Creates a new instance of [QuotationDetailsState] with optional new values
  QuotationDetailsState copyWith({
    final Quotation? quotation,
  }) {
    return QuotationDetailsState(
      quotation: quotation ?? this.quotation,
    );
  }
}