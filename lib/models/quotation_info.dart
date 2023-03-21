import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:quotation_module/models/line_item.dart';


@DataClass(fromJson: true, toJson: true)
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

  /// Returns a string with the properties of [QuotationInfo]
  @override
  String toString() {
    String value = 'QuotationInfo{<optimized out>}';
    assert(() {
      value =
          'QuotationInfo@<$hexIdentity>{title: $title, description: $description, lineItems: $lineItems}';
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
      description,
      lineItems,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationInfo &&
            runtimeType == other.runtimeType &&
            title == other.title &&
            description == other.description &&
            deepEquality(lineItems, other.lineItems);
  }

  /// Creates a new instance of [QuotationInfo] with optional new values
  QuotationInfo copyWith({
    final String? title,
    final String? description,
    final List<LineItem>? lineItems,
  }) {
    return QuotationInfo(
      title: title ?? this.title,
      description: description ?? this.description,
      lineItems: lineItems ?? this.lineItems,
    );
  }

  /// Converts [QuotationInfo] to a [Map] json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'lineItems': <dynamic>[
        for (final LineItem i0 in lineItems) i0.toJson(),
      ],
    };
  }

  /// Creates an instance of [QuotationInfo] from [json]
  factory QuotationInfo.fromJson(Map<dynamic, dynamic> json) {
    return QuotationInfo(
      title: json['title'] as String,
      description: json['description'] as String,
      lineItems: <LineItem>[
        for (final dynamic i0 in (json['lineItems'] as List<dynamic>))
          LineItem.fromJson(i0),
      ],
    );
  }
}