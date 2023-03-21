import 'package:data_class_plugin/data_class_plugin.dart';

import 'customer_info.dart';
import 'quotation_info.dart';

@DataClass(fromJson: true, toJson: true)
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

  /// Returns a string with the properties of [Quotation]
  @override
  String toString() {
    String value = 'Quotation{<optimized out>}';
    assert(() {
      value =
          'Quotation@<$hexIdentity>{costumerInfo: $costumerInfo, quotationInfo: $quotationInfo, totalPrice: $totalPrice, photos: $photos}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      costumerInfo,
      quotationInfo,
      totalPrice,
      photos,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is Quotation &&
            runtimeType == other.runtimeType &&
            costumerInfo == other.costumerInfo &&
            quotationInfo == other.quotationInfo &&
            totalPrice == other.totalPrice &&
            deepEquality(photos, other.photos);
  }

  /// Creates a new instance of [Quotation] with optional new values
  Quotation copyWith({
    final CustomerInfo? costumerInfo,
    final QuotationInfo? quotationInfo,
    final double? totalPrice,
    final List<dynamic>? photos,
  }) {
    return Quotation(
      costumerInfo: costumerInfo ?? this.costumerInfo,
      quotationInfo: quotationInfo ?? this.quotationInfo,
      totalPrice: totalPrice ?? this.totalPrice,
      photos: photos ?? this.photos,
    );
  }

  /// Creates an instance of [Quotation] from [json]
  factory Quotation.fromJson(Map<dynamic, dynamic> json) {
    return Quotation(
      costumerInfo: CustomerInfo.fromJson(json['costumerInfo']),
      quotationInfo: QuotationInfo.fromJson(json['quotationInfo']),
      totalPrice: json['totalPrice'] as double,
      photos: <dynamic>[
        for (final dynamic i0 in (json['photos'] as List<dynamic>))
// FIXME: variable is dynamic or contains a type that is not yet declared
          i0,
      ],
    );
  }

  /// Converts [Quotation] to a [Map] json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'costumerInfo': costumerInfo.toJson(),
      'quotationInfo': quotationInfo.toJson(),
      'totalPrice': totalPrice,
      'photos': <dynamic>[
        for (final dynamic i0 in photos) i0,
      ],
    };
  }
}