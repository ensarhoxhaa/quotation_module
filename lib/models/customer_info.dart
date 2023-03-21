import 'package:data_class_plugin/data_class_plugin.dart';

@DataClass(fromJson: true, toJson: true)
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

  /// Returns a string with the properties of [CustomerInfo]
  @override
  String toString() {
    String value = 'CustomerInfo{<optimized out>}';
    assert(() {
      value =
          'CustomerInfo@<$hexIdentity>{companyName: $companyName, companyAddress: $companyAddress, companyEmail: $companyEmail, vatNumber: $vatNumber}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      companyName,
      companyAddress,
      companyEmail,
      vatNumber,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is CustomerInfo &&
            runtimeType == other.runtimeType &&
            companyName == other.companyName &&
            companyAddress == other.companyAddress &&
            companyEmail == other.companyEmail &&
            vatNumber == other.vatNumber;
  }

  /// Creates a new instance of [CustomerInfo] with optional new values
  CustomerInfo copyWith({
    final String? companyName,
    final String? companyAddress,
    final String? companyEmail,
    final int? vatNumber,
  }) {
    return CustomerInfo(
      companyName: companyName ?? this.companyName,
      companyAddress: companyAddress ?? this.companyAddress,
      companyEmail: companyEmail ?? this.companyEmail,
      vatNumber: vatNumber ?? this.vatNumber,
    );
  }

  /// Converts [CustomerInfo] to a [Map] json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'companyName': companyName,
      'companyAddress': companyAddress,
      'companyEmail': companyEmail,
      'vatNumber': vatNumber,
    };
  }

  /// Creates an instance of [CustomerInfo] from [json]
  factory CustomerInfo.fromJson(Map<dynamic, dynamic> json) {
    return CustomerInfo(
      companyName: json['companyName'] as String,
      companyAddress: json['companyAddress'] as String,
      companyEmail: json['companyEmail'] as String,
      vatNumber: json['vatNumber'] as int,
    );
  }
}