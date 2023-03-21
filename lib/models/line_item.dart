
import 'package:data_class_plugin/data_class_plugin.dart';

@DataClass(fromJson: true, toJson: true)
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

  /// Returns a string with the properties of [LineItem]
  @override
  String toString() {
    String value = 'LineItem{<optimized out>}';
    assert(() {
      value =
          'LineItem@<$hexIdentity>{title: $title, price: $price, quantity: $quantity, totalPrice: $totalPrice}';
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
      price,
      quantity,
      totalPrice,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is LineItem &&
            runtimeType == other.runtimeType &&
            title == other.title &&
            price == other.price &&
            quantity == other.quantity &&
            totalPrice == other.totalPrice;
  }

  /// Creates a new instance of [LineItem] with optional new values
  LineItem copyWith({
    final String? title,
    final String? price,
    final double? quantity,
    final double? totalPrice,
  }) {
    return LineItem(
      title: title ?? this.title,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  /// Converts [LineItem] to a [Map] json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'price': price,
      'quantity': quantity,
      'totalPrice': totalPrice,
    };
  }

  /// Creates an instance of [LineItem] from [json]
  factory LineItem.fromJson(Map<dynamic, dynamic> json) {
    return LineItem(
      title: json['title'] as String,
      price: json['price'] as String,
      quantity: json['quantity'] as double,
      totalPrice: json['totalPrice'] as double,
    );
  }
}