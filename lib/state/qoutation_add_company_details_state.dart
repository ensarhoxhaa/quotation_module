import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:flutter/material.dart';

@DataClass()
class QuotationAddCompanyDetailsState {
  /// Shorthand constructor
  QuotationAddCompanyDetailsState({
    required this.companyNameController,
    required this.companyAddressController,
    required this.emailAddressController,
    required this.vatNumberController,
    required this.companyNameError,
  });

  QuotationAddCompanyDetailsState.initial()
      : companyAddressController = TextEditingController(),
        companyNameController = TextEditingController(),
        emailAddressController = TextEditingController(),
        vatNumberController = TextEditingController(),
        companyNameError = false;

  final TextEditingController companyNameController;
  final TextEditingController companyAddressController;
  final TextEditingController emailAddressController;
  final TextEditingController vatNumberController;
  final bool companyNameError;

  /// Returns a string with the properties of [QuotationAddCompanyDetailsState]
  @override
  String toString() {
    String value = 'QuotationAddCompanyDetailsState{<optimized out>}';
    assert(() {
      value =
          'QuotationAddCompanyDetailsState@<$hexIdentity>{companyNameController: $companyNameController, companyAddressController: $companyAddressController, emailAddressController: $emailAddressController, vatNumberController: $vatNumberController, companyNameError: $companyNameError}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      companyNameController,
      companyAddressController,
      emailAddressController,
      vatNumberController,
      companyNameError,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationAddCompanyDetailsState &&
            runtimeType == other.runtimeType &&
            companyNameController == other.companyNameController &&
            companyAddressController == other.companyAddressController &&
            emailAddressController == other.emailAddressController &&
            vatNumberController == other.vatNumberController &&
            companyNameError == other.companyNameError;
  }

  /// Creates a new instance of [QuotationAddCompanyDetailsState] with optional new values
  QuotationAddCompanyDetailsState copyWith({
    final TextEditingController? companyNameController,
    final TextEditingController? companyAddressController,
    final TextEditingController? emailAddressController,
    final TextEditingController? vatNumberController,
    final bool? companyNameError,
  }) {
    return QuotationAddCompanyDetailsState(
      companyNameController:
          companyNameController ?? this.companyNameController,
      companyAddressController:
          companyAddressController ?? this.companyAddressController,
      emailAddressController:
          emailAddressController ?? this.emailAddressController,
      vatNumberController: vatNumberController ?? this.vatNumberController,
      companyNameError: companyNameError ?? this.companyNameError,
    );
  }
}